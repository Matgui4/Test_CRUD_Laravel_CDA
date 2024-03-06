<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Category extends Model
{
    use HasFactory;
// pour récupérer le slug de la catégorie en URI
    public function getRouteKeyName(): string
    {
        return 'slug';
    }
    // pour récupérer tous les postes qui appartiennent à Category
    public function posts(): HasMany
    {
        return $this->hasMany(Post::class);
    }
}
