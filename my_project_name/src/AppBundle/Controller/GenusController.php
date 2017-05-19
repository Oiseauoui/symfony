<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Genus;
use AppBundle\Entity\GenusNote;
use AppBundle\Entity\GenusScientist;
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
        $em = $this->getDoctrine()->getManager();

        $subFamily = $em->getRepository('AppBundle:SubFamily')
            ->findAny();
        $genus = new Genus();
        $genus->setName('Octopus'.rand(1, 100));
        $genus->setSubFamily('Octopodinae');
        $genus->setSpeciesCount(rand(100, 99999));
        $genus->setFirstDiscoveredAt(new \DateTime('50 years'));


        $genusNote = new GenusNote();
        $genusNote->setUsername('AquaWeaver');
        $genusNote->setUserAvatarFilename('ryan.jpeg');
        $genusNote->setNote('I counted 8 legs... as they wrapped around me');
        $genusNote->setCreateAt(new \DateTime('-1 month'));
        $genusNote->setGenus($genus);

        $user = $em->getRepository('AppBundle:User')
            ->findOneBy(['email' => 'aquanaut1@example.org']);
      //  $genus->addGenusScientist($user);
        $genusScientist = new GenusScientist();
        $genusScientist->setGenus($genus);
        $genusScientist->setUser($user);
        $genusScientist->setYearsStudied(10);
        $em->persist($genusScientist);



        $em->persist($genus);
        $em->persist($genusNote);
        $em->flush();

        return new Response(sprintf(
            '<html><body>Genus created!
<a href="%s">%s</a>
</body></html>',
            $this->generateUrl('genus_show', ['slug' => $genus->getSlug()]),
            $genus->getName()
        ));

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
     * @Route("/genus/{slug}", name="genus_show")
     */
public function showAction(Genus $genus)
{
    //$funFact = 'Octopuses can change the color of their body in just *three-tenths* of a second!';

    $em = $this->getDoctrine()->getManager();
    /* $genus = $em->getRepository('AppBundle:Genus')
    ->findOneBy(['name'=>$genusName]);

    if (!$genus) {
        throw $this->createNotFoundException('No genus found');
    }
*/
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
        ->info('Showing genus: '.$genus->getName());

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
     * @Route("/genus/{slug}/notes", name="genus_show_notes")
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
    /**
     * @Route("/genus/{genusId}/scientists/{userId}", name="genus_scientists_remove")
     * @Method("DELETE")
     */

    public function removeGenusScientistAction($genusId, $userId)
    {
        $em = $this->getDoctrine()->getManager();

        /** @var Genus $genus */
       /* $genus = $em->getRepository('AppBundle:Genus')
            ->find($genusId);
        if (!$genus) {
            throw $this->createNotFoundException('genus not found');
        }
        $genusScientist = $em->getRepository('AppBundle:User')
            ->find($userId);
        if (!$genusScientist) {
            throw $this->createNotFoundException('scientist not found');
        }
        */
        $genusScientist = $em->getRepository('AppBundle:GenusScientist')
            ->findOneBy([
                'user' => $userId,
                'genus' => $genusId
            ]);

        $em->remove($genusScientist);
        $genus->removeGenusScientist($genusScientist);
        //$em->persist($genus);
        $em->flush();

        return new Response(null, 204);

    }

}