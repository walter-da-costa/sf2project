<?php

namespace OC\PlatformBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use OC\PlatformBundle\Handler\AdvertDataForm;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;

class AdvertType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {

        $builder
            ->add('author',    TextType::class, ['required' => false,
                'constraints' => [
                    new NotBlank(['message' => "L'annonce doit avoir un auteur"])
                ]
            ])
            ->add('title',     TextType::class, ['required' => false,
                'constraints' => [
                    new NotBlank(['message' => "Veuillez renseigner le titre de l'annonce"]),
                    new Length(['min' => 5, 'minMessage' => 'Au moins 5 caractères dans le titre']),
                ]
            ])
            ->add('content',   TextareaType::class, ['required' => false,
                'constraints' => [
                    new NotBlank(['message' => 'Le contenu ne peut pas être vide.']),
                ]
            ])
        ;
    }

    /**
     * @param OptionsResolver $resolver
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'OC\PlatformBundle\DataForm\AdvertDataForm'
        ));
    }

}
