<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $title = fake()->unique()->sentence;
        $content = fake()->paragraphs(asText: true);
        $created_at = fake()->dateTimeBetween('-1 year');

        return [
            //pour avoir un titre avec une phrase aléatoire
            'title' => $title,
            //le contenu du titre slugifié soit URL Friendly et vient supprimer les potentiels carractères spéciaux
            'slug' => Str::slug($title),
            //extrait, limit() permet de dire la partie de la chaine de carractere qu'on veut récup, les '...' en argt sont les derniers carractere visible donc on aura le text et ça aprèsn le nb de car donné.
            'excerpt' => Str::limit($content, 150),
            //Contenu, le "astext" pour avoir juste le resultat sous forme de txt
            'content' => $content,
            //image
            'thumbmail' => fake()->imageUrl,
            //date de création, ici on cherche une date aléatoire entre aujourd'hui et 1 an car à la création tout serait créé en même temps vu que c'est Faker qui gère
            'created_at' => $created_at,
            //date de mise à jour,
            'updated_at' => $created_at,

        ];
    }
}
