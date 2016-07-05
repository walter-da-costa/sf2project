<?php


namespace OC\PlatformBundle\Controller;

use OC\PlatformBundle\DataForm\AdvertDataForm;
use OC\PlatformBundle\Entity\Adherent;
use OC\PlatformBundle\Entity\Advert;
use OC\PlatformBundle\Entity\Application;
use OC\PlatformBundle\Entity\Image;
use OC\PlatformBundle\Form\AdvertType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;


class AdvertController extends Controller
{

    public function indexAction($page)
    {
        if ($page < 1) {
          //throw $this->createNotFoundException("La page ".$page." n'existe pas.");
          $page = 1;
        }
        // Ici je fixe le nombre d'annonces par page à 3
        // Mais bien sûr il faudrait utiliser un paramètre, et y accéder via $this->container->getParameter('nb_per_page')
        $nbPerPage = 10 ;
        $listAdverts = $this->getDoctrine()
          ->getManager()
          ->getRepository('OCPlatformBundle:Advert')
          ->getAdverts($page, $nbPerPage);

        // On calcule le nombre total de pages grâce au count($listAdverts) qui retourne le nombre total d'annonces
        $nbPages = ceil(count($listAdverts)/$nbPerPage);
        // Si la page n'existe pas, on retourne une 404
        if ($page > $nbPages) {
          // throw $this->createNotFoundException("La page ".$page." n'existe pas.");
          $page = 1;
        }

        return $this->render('@OCPlatform/Advert/index.html.twig', array(
          'listAdverts' => $listAdverts,
          'nbPages'     => $nbPages,
          'page'        => $page
        ));
    }


	public function viewAction($id)
	{
		$em = $this->getDoctrine()->getManager();
		$repository = $em->getRepository('OCPlatformBundle:Advert');
		$advert = $repository->find($id);
		if (null === $advert) {
      		throw $this->createNotFoundException("L'annonce d'id ".$id." n'existe pas.");
    	}

		$listApplications = $advert->getApplications();

	    return $this->render('@OCPlatform/Advert/view.html.twig', array(
	      'advert' => $advert,
	      'listApplications'=>$listApplications
	    ));
	}

  	public function menuAction()
  	{
	    /*$listAdverts = array(
	      array('id' => 2, 'title' => 'Recherche développeur Symfony2'),
	      array('id' => 5, 'title' => 'Mission de webmaster'),
	      array('id' => 9, 'title' => 'Offre de stage webdesigner')
	    );*/

	    $repository = $this->getDoctrine()->getRepository('OCPlatformBundle:Advert');
		$listAdverts = $repository->findBy([],['dateCreation'=> 'desc'],5,0);
		if (null === $listAdverts) {
      		throw $this->createNotFoundException("NO ADVERTS FOUND IN BDD !");
    	}
	    return $this->render('@OCPlatform/Advert/menu.html.twig',['listAdverts' => $listAdverts]);
	}


	public function editAction($id, Request $request)
	{
        $formData = $this->get('oc_platform.handler.advert')->buildFormData($id);
	    $form = $this->createForm(AdvertType::class, $formData);

        if ($form->handleRequest($request)->isValid()) {
            try {
                $advert = $this->get('oc_platform.handler.advert')->handle($formData, $id);
                $request->getSession()->getFlashBag()->add('notice', 'Annonce bien enregistrée.');
                return $this->redirect($this->generateUrl('oc_platform_view', array('id' => $id)));
            } catch (Exception $e) {
                $request->getSession()->getFlashBag()->add('error', "L'annonce n'a pas pu être enregistrée !");
            }
        }
		return $this->render('@OCPlatform/Advert/edit.html.twig', array(
		    'advert_id' => $id,
		    'form' => $form->createView()
		));
	}

    /**
     * @Security("has_role('ROLE_ADR')")
     */
    public function addAction(Request $request)
    {
        $advertObjDataForm = new AdvertDataForm();
        $form = $this->createForm(AdvertType::class, $advertObjDataForm);

        if ($form->handleRequest($request)->isValid()) {
            try {
                $advert = $this->get('oc_platform.handler.advert')->handle($advertObjDataForm);
                $request->getSession()->getFlashBag()->add('notice', 'Annonce bien enregistrée.');
                return $this->redirect($this->generateUrl('oc_platform_view', array('id' => $advert->getId())));
            } catch (Exception $e) {
                $request->getSession()->getFlashBag()->add('error', "L'annonce n'a pas pu être enregistrée !");
            }
        }

        return $this->render('@OCPlatform/Advert/add.html.twig', array('form' => $form->createView()));
    }


    /**
     * [deleteAction description]
     * @param  [type]  $id      [description]
     * @param  Request $request [description]
     * @return [type]           [description]
     */
    public function deleteAction($id, Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $advert = $em->getRepository('OCPlatformBundle:Advert')->find($id);

        if (null === $advert) {
            throw $this->createNotFoundException("L'annonce d'id ".$id." n'existe pas.");
        }

        /**
         * On crée un formulaire vide, qui ne contiendra que le champ CSRF
         * Cela permet de protéger la suppression d'annonce contre cette faille
         */
        $form = $this->createFormBuilder()->getForm();

        if ($form->handleRequest($request)->isValid()) {
            $em->remove($advert);
            $em->flush();

            $request->getSession()->getFlashBag()->add('info', "L'annonce a bien été supprimée.");

            return $this->redirect($this->generateUrl('oc_platform_home'));
        }

        return $this->render('@OCPlatform/Advert/delete.html.twig', array(
          'advert' => $advert,
          'form'   => $form->createView()
        ));
    }

}
