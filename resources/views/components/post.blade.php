{{-- on va povoir indiqué tous les nom des propriétés qu'on va pouvoir récupéré grace à la valeur d'attribut lors de l'utilisation de post  --}}
{{-- pour gérer l'affichage conditionnel des posts --}}
@props(['post', 'list' => false])
{{-- Début du post --}}
<article class="flex flex-col lg:flex-row pb-10 md:pb-16 border-b">
    <div class="lg:w-5/12">
        <!-- récupération de l'image de chaque post -->
        <img class="w-full max-h-72 object-cover lg:max-h-none lg:h-full" src="{{ str_starts_with($post->thumbmail, 'http') ? $post->thumbmail : asset('storage/' . $post->thumbmail) }}">    </div>
    <div class="flex flex-col items-start mt-5 space-y-5 lg:w-7/12 lg:mt-0 lg:ml-12">
        {{-- si on a une valeur autre que null dans la category --}}
        @if ($post->category)
        {{-- on récupère la category --}}
        <a href="{{ route('posts.byCategory', ['category'=>$post->category]) }}" class="underline font-bold text-slate-900 text-lg">{{ $post->category->name }}</a>
        @endif
        {{-- récupération du titre de chaque post --}}
        <h1 class="font-bold text-slate-900 text-3xl lg:text-5xl leading-tight">{{$post->title}}</h1>

        {{-- affichage des tags --}}
        @if ($post->tags->isNotEmpty())
        @foreach ($post->tags as $tag)
        <ul class="flex flex-wrap gap-2">
            <li><a href="{{ route('posts.byTag', ['tag'=>$tag]) }}" class="px-3 py-1 bg-indigo-700 text-indigo-50 rounded-full text-sm">{{$tag->name}}</a></li>
        </ul>
        @endforeach
        @endif

        <p class="text-xl lg:text-2xl text-slate-600">
            {{-- récupération des extraits de chaque post --}}
            @if ($list)
            {{$post->excerpt}}
            @else
            {{-- récupération du contenu du post --}}
            {!! nl2br(e($post->content)) !!}
            @endif
        </p>

        @if ($list)

        <a href="{{ route('posts.show', ['post'=>$post]) }}" class="flex items-center py-5 px-7 font-semibold bg-slate-900 transition text-slate-50 rounded-full">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 mr-2">
                <path stroke-linecap="round" stroke-linejoin="round" d="M12 7.5h1.5m-1.5 3h1.5m-7.5 3h7.5m-7.5 3h7.5m3-9h3.375c.621 0 1.125.504 1.125 1.125V18a2.25 2.25 0 01-2.25 2.25M16.5 7.5V18a2.25 2.25 0 002.25 2.25M16.5 7.5V4.875c0-.621-.504-1.125-1.125-1.125H4.125C3.504 3.75 3 4.254 3 4.875V18a2.25 2.25 0 002.25 2.25h13.5M6 7.5h3v3H6v-3z" />
            </svg>
            Lire l'article
        </a>
        @else
        <time class="text-xs text-slate-400" datetime="{{$post->created_at}}">@datetime($post->created_at)</time>
        @endif
    </div>
</article>
{{-- Fin du post --}}