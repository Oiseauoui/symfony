<?php

namespace AppBundle\Repository;

use AppBundle\Entity\Genus;
use AppBundle\Entity\GenusNote;
use Doctrine\ORM\EntityRepository;

class GenusNoteRepository extends EntityRepository
{
    /**
     * @param Genus $genus
     * @return GenusNote[]
     */
    public function findAllRecentNotesForGenus(Genus $genus)
    {
        return $this->createQueryBuilder('genus_note')
            ->andWhere('genus_note.genus = :genus')
            ->setParameter('genus', $genus)
            ->andWhere('genus_note.createAt > :recentDate')
            ->setParameter('recentDate', new \DateTime('-3 months'))
            ->orderBy('genus_note.createAt', 'DESC')
            ->getQuery()
            ->execute();
    }
}
