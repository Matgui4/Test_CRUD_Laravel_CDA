<?php

namespace App\View\Components;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\Support\Collection;
use Illuminate\View\Component;

class Select extends Component
{
    // pour adapter l'image du composent
    public bool $valueIsCollection;
    /**
     * Create a new component instance.
     */
    public function __construct(
        //contient le nom du champ
        public string $name,
        //contient le label du champ
        public string $label,
        //contient la liste des éléments qu'on souhaite dans notre select
        public Collection $list,

        public ?string $id = null,
        // option dans la collection
        public string $optionValuesKeys = 'id',
        public string $optionValuesTexts = 'name',
        // récupérer une valeur dans le select
        public mixed $value = null,
        // si c'est un choix multiple
        public bool $multiple = false,
        // contenu d'un message d'aide
        public string $help = '',
    ) {
        $this->id ??= $this->name;
        $this->handleValue();
    }

    protected function handleValue():void
    {
        // si il y a déjà une vieille valeur
        $this->value = old($this->name) ?? $this->value;
        // si la valeur est un tableau alors il devient la collection
        if(is_array($this->value)){
            $this->value = collect($this->value);
        }
        $this->valueIsCollection = $this->value instanceof Collection;
    }
    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.select');
    }
}
