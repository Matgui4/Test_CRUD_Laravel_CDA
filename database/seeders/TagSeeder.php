<?php

namespace Database\Seeders;

use App\Models\Tag;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class TagSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //ici on choisi quel nom de tag on veut
        $tags = collect(['HarryPotter','HenryPodbeur','MathisDocker', 'ItsPeukeuchuw','Cestdelamagie']);
        //pour faire différentes actions sur ces valeurs /fn fonction flechée
        $tags->each(fn ($tag)=>Tag::create([
            'name' => $tag,
            'slug' => Str::slug($tag),
        ]));
    }
}
