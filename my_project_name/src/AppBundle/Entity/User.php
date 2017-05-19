<?php

namespace AppBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Security\Core\Role\Role;
use Symfony\Component\Security\Core\User\UserInterface;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;
//use FOS\UserBundle\Model\User as BaseUser;


/**
 * @ORM\Entity(repositoryClass="AppBundle\Repository\UserRepository")
 * @ORM\Table(name="user")
 * @UniqueEntity(fields={"email"}, message="It looks like you already have an account!")
 */
class User implements UserInterface
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @Assert\NotBlank()
     * @Assert\Email()
     * @ORM\Column(type="string", unique=true)
     */
    private  $email;
    /**
     * @ORM\Column(type="string")
     */

    private $password;
    /**
     * @Assert\NotBlank(groups={"Registration"})
     */

    private $plainPassword;

    /**
     * @ORM\Column(type="json_array")
     */
    private $roles = [];

    /**
     * @ORM\Column(type="boolean")
     */
    private $isScientist = false;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    private $firstName;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    private $lastName;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    private $avatarUri;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    private $universityName;

    /**
     * @ORM\OneToMany(targetEntity="GenusScientist", mappedBy="user")
     */
    private $studiedGenuses;

    public function __construct()
    {
        $this->studiedGenuses = new ArrayCollection();
    }


    public function getId()
    {
        return $this->id;
    }

    // needed by the security system

    public function getUsername()
    {
        return $this->email;
    }
    public function getRoles()
    {
        $roles = $this->roles;
        if (!in_array('ROLE_USER', $roles)) {
            $roles[] = 'ROLE_USER';
        }
        return $roles;

        //return ['ROLE_USER'];
    }
    public function getPassword()
    {
        return $this->password;
    }
    public function getSalt()
    {
    }
    public function eraseCredentials()
    {
        $this->plainPassword = null;
    }

    public function setEmail($email)
    {
        $this->email = $email;
    }

    public function setPassword($password)
    {
        $this->password = $password;
    }

    public function getPlainPassword()
    {
        return $this->plainPassword;
    }
    public function setPlainPassword($plainPassword)
    {
        $this->plainPassword = $plainPassword;
        // guarantees that the entity looks "dirty" to Doctrine
        //when changing the plainPassword
        $this->password = null;
    }

    public function setRoles($roles)
    {
        $this->roles = $roles;
    }
    public function getEmail()
    {
        return $this->email;
    }
    public function isScientist()
    {
        return $this->isScientist;
    }

    public function setIsScientist($isScientist)
    {
        $this->isScientist = $isScientist;
    }

    public function getFirstName()
    {
        return $this->firstName;
    }

    public function setFirstName($firstName)
    {
        $this->firstName = $firstName;
    }

    public function getLastName()
    {
        return $this->lastName;
    }

    public function setLastName($lastName)
    {
        $this->lastName = $lastName;
    }

    public function getAvatarUri()
    {
        return $this->avatarUri;
    }

    public function setAvatarUri($avatarUri)
    {
        $this->avatarUri = $avatarUri;
    }

    public function getUniversityName()
    {
        return $this->universityName;
    }

    public function setUniversityName($universityName)
    {
        $this->universityName = $universityName;
    }

    public function getFullName()
    {
        return trim($this->getFirstName().' '.$this->getLastName());
    }

    /**
     * @return ArrayCollection|GenusScientist[]
     */
    public function getStudiedGenuses()
    {
        return $this->studiedGenuses;
    }
   /* public function addStudiedGenus(Genus $genus)
    {
        if ($this->studiedGenuses->contains($genus)) {
            return;
        }
        $this->studiedGenuses[] = $genus;
        $genus->addGenusScientist($this);
    }
    public function removeStudiedGenus(Genus $genus)
    {
        if (!$this->studiedGenuses->contains($genus)) {
            return;
        }
        $this->studiedGenuses->removeElement($genus);
        $genus->removeGenusScientist($this);
    }*/
}

