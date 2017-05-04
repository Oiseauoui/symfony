<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Genus;
use AppBundle\Entity\GenusNote;
use AppBundle\Service\MarkdownTransformer;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;

class GenusController extends Controller
{
    /**
     * @Route("/genus/new")
     */
    public function newAction()
    {
        $genus = new Genus();
        $genus->setName('Octopus'.rand(1, 100));
        $genus->setSubFamily('Octopodinae');
        $genus->setSpeciesCount(rand(100, 99999));

        $genusNote = new GenusNote();
        $genusNote->setUsername('AquaWeaver');
        $genusNote->setUserAvatarFilename('ryan.jpeg');
        $genusNote->setNote('I counted 8 legs... as they wrapped around me');
        $genusNote->setCreateAt(new \DateTime('-1 month'));
        $genusNote->setGenus($genus);


        $em = $this->getDoctrine()->getManager();
        $em->persist($genus);
        $em->persist($genusNote);
        $em->flush();

        return new Response('<html><body>Genus created!</body></html>');
    }

    /**
     * @Route("/genus")
     */

    public function listAction()
    {
        $em = $this->getDoctrine()->getManager();
       // dump($em->getRepository('AppBundle:Genus'));
        $genuses = $em->getRepository('AppBundle:Genus')
            ->findAllPublishedOrderedByRecentlyActive();
      //  dump($genuses);die; array

        return $this->render('genus/list.html.twig', [
            'genuses'=>$genuses
    ]);
    }

    /**
     * @Route("/genus/{genusName}", name="genus_show")
     */
public function showAction($genusName)
{
    //$funFact = 'Octopuses can change the color of their body in just *three-tenths* of a second!';

    $em = $this->getDoctrine()->getManager();
    $genus = $em->getRepository('AppBundle:Genus')
    ->findOneBy(['name'=>$genusName]);

    if (!$genus) {
        throw $this->createNotFoundException('No genus found');
    }

    $markdownTransformer = $this->get('app.markdown_transformer');
        //new MarkdownTransformer(
          //  $this->get('markdown.parser')
    $funFact = $markdownTransformer->parse($genus->getFunFact());
/*
    $cache = $this->get('doctrine_cache.providers.my_markdown_cache');
    $key = md5($funFact);
    if($cache->contains($key)) {
        $funFact = $cache->fetch($key);
    }else {
        sleep(1);
        $funFact = $this  //->container
    ->get('markdown.parser')
            ->transform($funFact);

    }
    $cache->save($key, $funFact);
*?

    /*$notes = [
        'Octopus asked me a riddle, outsmarted me',
        'I counted 8 legs... as they wrapped around me',
        'Inked!'
    ];*/
    //$templating = $this->container->get('templating');


    $this->get('logger')
        ->info('Showing genus: .$genusName');

    $recentNotes = $em->getRepository('AppBundle:GenusNote')
        ->findAllRecentNotesForGenus($genus);

   /* $recentNotes = $genus->getNotes() //lesson 9 Querying on a Relationship
        ->filter(function (GenusNote $note) {
            return $note->getCreateAt() > new\DateTime('-3 months');
        });*/

return $this->render('genus/show.html.twig', array(
        'genus' => $genus,
        'funFact'=>$funFact,
        'recentNoteCount'=>count($recentNotes)

    /*'name'=> $genusName,
        'funFact' => $funFact,*/
        //'notes'=>$notes
));
   // return new Response($html);
}

    /**
     * @Route("/genus/{name}/notes", name="genus_show_notes")
     * @Method("GET")
     */
public function getNotesAction(Genus $genus)//$genusName)
{
    $notes = [];
   foreach($genus->getNotes() as $note) {
       $notes[]= [
           'id' => $note->getId(),
           'username'=> $note->getUsername(),
           'avatarUri' => '/images/'.$note->getUserAvatarFilename(),
           'note' => $note->getNote(),
           'date' => $note->getCreateAt()->format('M d, Y')
       ];
       //dump($note);
   }
   // dump($genus);
  /*  $notes = [
        ['id' => 1, 'username' => 'AquaPelham', 'avatarUri' => '/images/leanna.jpeg', 'note' => 'Octopus asked me a riddle, outsmarted me', 'date' => 'Dec. 10, 2015'],
        ['id' => 2, 'username' => 'AquaWeaver', 'avatarUri' => '/images/ryan.jpeg', 'note' => 'I counted 8 legs... as they wrapped around me', 'date' => 'Dec. 1, 2015'],
        ['id' => 3, 'username' => 'AquaPelham', 'avatarUri' => '/images/leanna.jpeg', 'note' => 'Inked!', 'date' => 'Aug. 20, 2015'],
    ];*/
$data = [
    'notes'=>$notes
];

  //return new Response(json_encode($data));
  return new JsonResponse($data);
  }
}