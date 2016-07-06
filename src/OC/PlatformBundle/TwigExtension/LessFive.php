<?php

namespace OC\PlatformBundle\TwigExtension;

/**
 * objectif : Comprendre le principe d'extension twig
 * Lessfive : length($mot) < 5 ?
 * exemple dans page.html.twig:  {{ isLessFive(advert.content) }}
 */
class LessFive extends \Twig_Extension
{
    CONST LIMIT = 5;

    /** fonction qui contient notre logique  */
    public function lessFiveFunction($text)
    {
        return (strlen($text) < self::LIMIT) ? "lessFive" : "notLessFive" ;
    }

    /** Twig va exécuter cette méthode pour savoir quelle(s) fonction(s) ajoute notre service */
    public function getFunctions()
    {
        return [
            new \Twig_SimpleFunction('isLessFive', [$this, 'lessFiveFunction']),
        ];
    }

    /** La méthode getName() identifie votre extension Twig, elle est obligatoire */
    public function getName()
    {
        return 'LessFive';
    }

}
