<?php 


namespace OC\PlatformBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class AdvertControllerTest extends WebTestCase
{
    public function testShowPost()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/platform');

        $this->assertGreaterThan(
            0,
            $crawler->filter('html:contains("Accueil")')->count()
        );
    }
}



?>
