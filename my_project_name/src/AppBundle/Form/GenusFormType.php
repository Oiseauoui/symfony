<?php

namespace AppBundle\Form;

use AppBundle\Entity\SubFamily;
use AppBundle\Repository\SubFamilyRepository;
use AppBundle\Repository\UserRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\FormInterface;
use Symfony\Component\Form\FormView;
use Symfony\Component\OptionsResolver\OptionsResolver;

class GenusFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('subFamily', EntityType::class, [
                'placeholder' => 'Choose a Sub Family',
                'class' => SubFamily::class,
                'query_builder' => function(SubFamilyRepository $repo) {
                    return $repo->createAlphabeticalQueryBuilder();
                }
            ])
            ->add('speciesCount')
            ->add('funFact', null, [
                'help' => 'For example, Leatherback sea turtles can travel more than 10,000 miles every year!'
            ])
            ->add('isPublished', ChoiceType::class, [
                'choices'  => [
                   'Yes' => true,
                    'No' => false,
                    ]
            ])
            ->add('firstDiscoveredAt', DateType::class, [
            'widget' => 'single_text',
                 'attr' =>
        ['class' => 'js-datepicker'
        ],

                'html5' => false,
                ])
        ->add('genusScientists', CollectionType::class, [
           'entry_type' =>GenusScientistEmbeddedForm::class,
            'allow_delete' => true,
            'allow_add' => true,
            'by_reference' => false,
        ])

            //see in form GenusScientistEmbeddedForm
           /* EntityType::class, [
            'class' => User::class,
            'multiple' => true,
            'expanded' => true,
            'choice_label' => 'email',
            'query_builder' => function(UserRepository $repo) {
            return $repo->createIsScientistQueryBuilder();

           }
        ])*/

        ;

    }

   /* public function finishView(FormView $view, FormInterface $form, array $options)
    {
        $view['funFact']->vars['help'] = 'For example, Leatherback sea turtles can travel more than 10,000 miles every year!';

    }*/


    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
           'data_class' => 'AppBundle\Entity\Genus'
        ]);
    }
}