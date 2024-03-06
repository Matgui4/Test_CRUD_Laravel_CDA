<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\Support\Facades\Storage;
use Illuminate\View\Component;

class Input extends Component
{
    /**
     * Create a new component instance.
     */
    public function __construct(
        public string $name,
        public string $label,
        // le ? pour dire que c'est soit une chaine de charactère soit NULL
        public ?string $value = null,
        public ?string $id = null,
        public string $type = 'text',
        public string $help = '',
    )
    {
        // $this->id = $this->id ?? $this->name; pareil qu'en dessous / pour définir l'id en fonction de si il est choisi ou de le mettre sur le name par defaut
        $this->id ??= $this->name;

    }

    public function isImage():bool
    {
        // mimtype = img/jpg etc..
        return str_starts_with(Storage::mimeType($this->value), 'image/');
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.input');
    }
}
