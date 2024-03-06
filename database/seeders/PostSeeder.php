<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    //c'est ici qu'on choisi comment venir créer nos nouvelles entrées dans notre Table Post
    public function run(): void
    {
        $categories = Category::all();
        $tags = Tag::all();
        $users = User::all();
        //pour récupérer notre méthode qui créer les posts, avec le nombre désiré
        Post::factory(20)
            ->sequence(fn () => [
                'category_id' => $categories->random(),
            ])
            ->hasComments(5, fn ()=>['user_id'=>$users->random()])
            ->create()
            ->each(fn ($post) => $post->tags()->attach($tags->random(rand(0, 3))));
    }
}
