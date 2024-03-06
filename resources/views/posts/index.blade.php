{{-- Page d'accueil --}}
<x-default-layout>
    <div class="space-y-10 md:space-y-16">
        {{-- notre Table Post se retrouve ici --}}
        {{-- forelse = foreach + if else --}}
        @forelse($posts as $post)
        {{-- l'équivalent à :post="$post", ne fonctionne que si ils ont le même nom --}}
        <x-post :$post list />
        {{-- si il n'y a pas de résultat --}}
        @empty
        <p class="text-slate-400 text-center" >Aucun résultat.</p>
        @endforelse
        {{-- affichage de la pagination --}}
        {{$posts->links()}}
    </div>
</x-default-layout>