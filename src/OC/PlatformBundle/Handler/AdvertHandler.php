<?php

namespace OC\PlatformBundle\Handler;

use Doctrine\ORM\EntityManager;
use OC\PlatformBundle\Entity\Advert;
use OC\PlatformBundle\DataForm\AdvertDataForm;

class AdvertHandler
{
    private $entityManager;

    public function __construct(EntityManager $em)
    {
        $this->entityManager = $em;
    }

    /**
     * [handle : FormData -> BDD ]
     * @param  AdvertDataForm $advertObjDataForm [description]
     * @return [type]                            [description]
     */
    public function handle(AdvertDataForm $advertObjDataForm, $id = null )
    {
        if (null !== $id ) {
            $advertEntity = $this->entityManager->getRepository('OCPlatformBundle:Advert')->find($id);
        } else {
            $advertEntity = new Advert();
        }

        $advertEntity->setAuthor($advertObjDataForm->getAuthor());
        $advertEntity->setTitle($advertObjDataForm->getTitle());
        $advertEntity->setContent($advertObjDataForm->getContent());

        $this->entityManager->persist($advertEntity);
        $this->entityManager->flush($advertEntity);

        return $advertEntity;
    }

    /**
     * [buildFromId : BDD -> FormData]
     * @param  [type] $id [description]
     * @return [type]     [description]
     */
    public function buildFormData($id)
    {
        $advert = $this->entityManager->getRepository('OCPlatformBundle:Advert')->find($id);

        $advertDataForm = new AdvertDataForm();

        $advertDataForm->setAuthor($advert->getAuthor());
        $advertDataForm->setTitle($advert->getTitle());
        $advertDataForm->setContent($advert->getContent());

        return $advertDataForm;
    }
}
