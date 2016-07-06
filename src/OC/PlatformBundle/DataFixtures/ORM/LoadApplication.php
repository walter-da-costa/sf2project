<?php

namespace OC\PlatformBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use OC\PlatformBundle\Entity\Application;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;

class LoadApplication implements FixtureInterface, OrderedFixtureInterface
{

    public function getOrder()
    {
        return 2;
    }

    public function load(ObjectManager $manager)
    {
        $listData = [
            [2, 'Marine', "J'ai toutes les qualités requises.", '2016-01-05 11:06:30'],
            [2, 'Pierre', 'Je suis très motivé.', '2016-01-05 11:07:30'],
            [1, 'Thomas', "De la patate mon frère, ça c'est pour moi. wazaaa !", '2016-01-06 14:07:30'],
            [3, 'Bruno', "J'ai touts les mojos pour ça.", '2016-01-06 18:10:12'],
            [3, 'Kirikou', 'I am très motivé. Endeed !', '2016-01-06 18:10:12'],
        ];

        foreach ($listData as $data) {
            $application = new Application();
            $application->setAdvert($manager->getRepository('OCPlatformBundle:Advert')->find($data[0]));
            $application->setAuthor($data[1]);
            $application->setContent($data[2]);
            $application->setDate(\DateTime::createFromFormat('Y-m-d H:i:s', $data[3]));

            $manager->persist($application);
        }

        $manager->flush();
    }
}
