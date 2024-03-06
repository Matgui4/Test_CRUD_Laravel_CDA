<?php

namespace Database\Seeders;

use App\Models\Category;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //ici on choisi quel nom de catégorie on veut
        $categories = collect(['Billevesée', 'Coquecigrue', 'Colifichet']);
        //pour faire différentes actions sur ces valeurs /fn fonction flechée
        $categories->each(fn ($category)=> Category::create([
            'name' => $category,
            'slug' => Str::slug($category),

        ]));
    }
}
