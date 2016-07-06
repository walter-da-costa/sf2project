<?php

namespace OC\PlatformBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use OC\PlatformBundle\Entity\Advert;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;

class LoadAdvert implements FixtureInterface, OrderedFixtureInterface
{

    public function getOrder()
    {
        return 1;
    }

    public function load(ObjectManager $manager)
    {
        $listData = [
            ['Alexandre', 'Recherche développeur Symfony2.', 'Nous recherchons un développeur Symfony2 débutant sur Lyon. Aenean ultricies nisl metus, ullamcorper suscipit leo sagittis ut. Donec ut sapien mauris. Aenean consectetur aliquet aliquet. Duis augue nunc, scelerisque a bibendum sit amet, ornare at ante. Ut gravida lectus id gravida faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam sed scelerisque odio. Cras maximus ante leo, quis ornare augue congue ut. Mauris quis sem vel magna vehicula convallis. Integer vel libero leo. Vestibulum rhoncus nec justo quis blandit.'],
            ['Paulitta', 'Recherche développeur Spring.', 'Nous recherchons un développeur Spring débutant sur Lyon. Aenean ultricies nisl metus, ullamcorper suscipit leo sagittis ut. Donec ut sapien mauris. Aenean consectetur aliquet aliquet. Duis augue nunc, scelerisque a bibendum sit amet, ornare at ante. Ut gravida lectus id gravida faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam sed scelerisque odio. Cras maximus ante leo, quis ornare augue congue ut. Mauris quis sem vel magna vehicula convallis. Integer vel libero leo. Vestibulum rhoncus nec justo quis blandit.'],
            ['Antonio', 'Recherche développeur Laravel.', 'Nous recherchons un développeur Laravel débutant sur Lyon. Aenean ultricies nisl metus, ullamcorper suscipit leo sagittis ut. Donec ut sapien mauris. Aenean consectetur aliquet aliquet. Duis augue nunc, scelerisque a bibendum sit amet, ornare at ante. Ut gravida lectus id gravida faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam sed scelerisque odio. Cras maximus ante leo, quis ornare augue congue ut. Mauris quis sem vel magna vehicula convallis. Integer vel libero leo. Vestibulum rhoncus nec justo quis blandit.'],
            ['Marco Polo', 'Recherche développeur CakePhp.', 'Nous recherchons un développeur CakePhp débutant sur Lyon. Aenean ultricies nisl metus, ullamcorper suscipit leo sagittis ut. Donec ut sapien mauris. Aenean consectetur aliquet aliquet. Duis augue nunc, scelerisque a bibendum sit amet, ornare at ante. Ut gravida lectus id gravida faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam sed scelerisque odio. Cras maximus ante leo, quis ornare augue congue ut. Mauris quis sem vel magna vehicula convallis. Integer vel libero leo. Vestibulum rhoncus nec justo quis blandit.'],
            ['Franchesca', 'Recherche développeur Struts.', 'Nous recherchons un développeur Struts débutant sur Lyon. Aenean ultricies nisl metus, ullamcorper suscipit leo sagittis ut. Donec ut sapien mauris. Aenean consectetur aliquet aliquet. Duis augue nunc, scelerisque a bibendum sit amet, ornare at ante. Ut gravida lectus id gravida faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam sed scelerisque odio. Cras maximus ante leo, quis ornare augue congue ut. Mauris quis sem vel magna vehicula convallis. Integer vel libero leo. Vestibulum rhoncus nec justo quis blandit.'],
            ['Gilmario', 'Recherche développeur C++.', 'Nous recherchons un développeur C++ confirmé sur Paris. Aenean ultricies nisl metus, ullamcorper suscipit leo sagittis ut. Donec ut sapien mauris. Aenean consectetur aliquet aliquet. Duis augue nunc, scelerisque a bibendum sit amet, ornare at ante. Ut gravida lectus id gravida faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam sed scelerisque odio. Cras maximus ante leo, quis ornare augue congue ut. Mauris quis sem vel magna vehicula convallis. Integer vel libero leo. Vestibulum rhoncus nec justo quis blandit.'],
            ['Pablo Gilmario', 'Recherche développeur Java 6.', 'Nous recherchons un développeur Java 6 confirmé sur Paris. Aenean ultricies nisl metus, ullamcorper suscipit leo sagittis ut. Donec ut sapien mauris. Aenean consectetur aliquet aliquet. Duis augue nunc, scelerisque a bibendum sit amet, ornare at ante. Ut gravida lectus id gravida faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam sed scelerisque odio. Cras maximus ante leo, quis ornare augue congue ut. Mauris quis sem vel magna vehicula convallis. Integer vel libero leo. Vestibulum rhoncus nec justo quis blandit.'],
        ];

        foreach ($listData as $data) {
            $advert = new Advert();
            $advert->setTitle($data[1]);
            $advert->setAuthor($data[0]);
            $advert->setContent($data[2]);
            $advert->setDateCreation(new \Datetime());

            $manager->persist($advert);
        }

        $manager->flush();
    }
}
