<?php
// src/OC/PlatformBundle/DoctrineListener/ApplicationNotification.php

namespace OC\PlatformBundle\DoctrineListener;

use Doctrine\ORM\Event\LifecycleEventArgs;
use OC\PlatformBundle\Entity\Application;
use Symfony\Component\HttpFoundation\Session\Session;

class ApplicationNotification
{
  private $mailer;
  private $session_var;

  public function __construct(\Swift_Mailer $mailer, Session $ss)
  {
    $this->mailer = $mailer;
    $this->session_var = $ss;
  }

  public function postPersist(LifecycleEventArgs $args)
  {
    $entity = $args->getEntity();

    // On veut envoyer un email que pour les entités Application
    if (!$entity instanceof Application) {
      return;
    }

    /*$message = new \Swift_Message(
      'Nouvelle candidature',
      'Vous avez reçu une nouvelle candidature.'
    );*/
    
    /*$message
      ->addTo($entity->getAdvert()->getAuthor()) // Ici bien sûr il faudrait un attribut "email", j'utilise "author" à la place
      ->addFrom('admin@votresite.com')
    ;*/
    //$this->mailer->send($message);

    // Comme j'ai pas un serveur de messagerie .. on affichera juste une notification
    $this->session_var->getFlashBag()->add('notice', 'eMail was sent - Vous avez reçu une nouvelle candidature');
  }
}