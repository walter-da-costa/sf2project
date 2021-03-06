<?php

namespace OC\PlatformBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use OC\PlatformBundle\Entity\Advert;

/** Une annonce peut contenir plusieurs candidatures, alors qu'une candidature n'appartient qu'à une seule annonce */

/**
 * @ORM\Table(name="application")
 * @ORM\Entity(repositoryClass="OC\PlatformBundle\Repository\ApplicationRepository")
 */
class Application
{

    /**
    * @ORM\ManyToOne(targetEntity="OC\PlatformBundle\Entity\Advert", inversedBy="applications")
    * @ORM\JoinColumn(nullable=false)
    */
    private $advert;

    /**
    * @ORM\Column(name="id", type="integer")
    * @ORM\Id
    * @ORM\GeneratedValue(strategy="AUTO")
    */
    private $id;

    /**
    * @ORM\Column(name="author", type="string", length=255)
    */
    private $author;

    /**
    * @ORM\Column(name="content", type="text")
    */
    private $content;

    /**
    * @ORM\Column(name="date", type="datetime")
    */
    private $date;

    public function __construct()
    {
        $this->date = new \Datetime();
    }

    public function getId()
    {
        return $this->id;
    }

    public function setAuthor($author)
    {
        $this->author = $author;
        return $this;
    }

    public function getAuthor()
    {
        return $this->author;
    }

    public function setContent($content)
    {
        $this->content = $content;
        return $this;
    }

    public function getContent()
    {
        return $this->content;
    }

    public function setDate(\DateTimeInterface $date)
    {
        $this->date = $date;
        return $this;
    }

    public function getDate()
    {
        return $this->date;
    }


    public function setAdvert(Advert $advert)
    {
        $this->advert = $advert;
        return $this;
    }

    public function getAdvert()
    {
        return $this->advert;
    }

}
