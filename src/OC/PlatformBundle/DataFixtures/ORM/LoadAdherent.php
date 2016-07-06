<?php

namespace OC\PlatformBundle\DataFixtures\ORM;

use Doctrine\Common\DataFixtures\FixtureInterface;
use Doctrine\Common\Persistence\ObjectManager;
use OC\PlatformBundle\Entity\Adherent;
use Doctrine\Common\DataFixtures\OrderedFixtureInterface;

class LoadAdherent implements FixtureInterface, OrderedFixtureInterface
{

    public function getOrder()
    {
        return 2;
    }

    public function load(ObjectManager $manager)
    {
        $listData = [
            ['admin', '$2y$13$Kv/yIxIIno2eZ8o728l9b.vb5OdkUkqD66asTYDcUC8exOrpIuEAG'],
            ['walter', '$2y$13$ghQYPch5QFEQanucssJ6O.0NyScAp0eByGo19snhmNZvU.RWZloiC'],
        ];

        foreach ($listData as $data) {
            $adherent = new Adherent();
            $adherent->setUsername($data[0]);
            $adherent->setPassword($data[1]);

            $manager->persist($adherent);
        }

        $manager->flush();
    }
}
