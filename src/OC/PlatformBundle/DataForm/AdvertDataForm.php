<?php

namespace OC\PlatformBundle\DataForm;

/**
* L'objet qui gère le contenu des champs
* but : dissocier le contenu de l'entité
*/
class AdvertDataForm
{

    /**
     * [$title description]
     * @var string
     */
    private $title;

    /**
     * [$content description]
     * @var string
     */
    private $content;

    /**
     * [$author description]
     * @var string
     */
    private $author;


    /**
     * Gets the [$title description].
     *
     * @return string
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * Sets the [$title description].
     *
     * @param string $title the title
     *
     * @return self
     */
    public function setTitle($title)
    {
        $this->title = $title;

        return $this;
    }

    /**
     * Gets the [$content description].
     *
     * @return string
     */
    public function getContent()
    {
        return $this->content;
    }

    /**
     * Sets the [$content description].
     *
     * @param string $content the content
     *
     * @return self
     */
    public function setContent($content)
    {
        $this->content = $content;

        return $this;
    }

    /**
     * Gets the [$author description].
     *
     * @return string
     */
    public function getAuthor()
    {
        return $this->author;
    }

    /**
     * Sets the [$author description].
     *
     * @param string $author the author
     *
     * @return self
     */
    public function setAuthor($author)
    {
        $this->author = $author;

        return $this;
    }
}


