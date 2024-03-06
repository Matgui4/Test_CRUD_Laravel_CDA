<x-default-layout :title=" $post->exists() ? 'Modifier le poste' : 'Création du poste' ">
    <form action="{{ $post->exists() ? route('admin.posts.update', ['post'=>$post]) : route('admin.posts.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        @if ($post->exists())
        @method('PATCH')
        @endif
        <div class="space-y-12">
            <div class="border-b border-gray-900/10 pb-12">
                <h1 class="text-base font-semibold leading-7 text-gray-900">{{$post->exists() ? 'Modifier "' . $post->title . '"' : 'Création du poste'}}</h1>
                <p class="mt-1 text-sm leading-6 text-gray-600">Tu es un écrivain Harry.</p>

                <div class="mt-10 space-y-8 md:w-2/3">
                    <x-input name="title" label="Titre" :value="$post->title"/>
                    <x-input name="slug" label="Slug" :value="$post->slug" help="Laisser vide pour un slug automatique. Si un slug est indiqué, il sera slugifié avant d'être soumis à validation." />
                    {{-- Contenu de l'article / textarea --}}
                    <x-textarea name="content" label="Contenu du poste">{{$post->title}}</x-textarea>
                    {{-- inputfile / thumbmail --}}
                    <x-input name="thumbmail" type="file" label="Image de couverture" :value="$post->thumbmail"></x-select>
                        {{-- selectionné category_id --}}
                        <x-select name="category_id" label="Catégorie" :value="$post->category_id" :list="$categories"></x-select>
                        {{-- selectionné plusieurs tag_id --}}
                        <x-select name="tag_ids" label="Etiquettes" :value="$post->tags" :list="$tags" multiple help="shift + click pour sélectionner."></x-select>

                </div>
            </div>
        </div>

        <div class="mt-6 flex items-center justify-end gap-x-6">
            <button type="submit" class="rounded-md bg-indigo-600 px-3 py-2 text-sm font-semibold text-white shadow-sm hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">
                {{$post->exists() ? 'Mettre à jour' : 'Publier'}}
            </button>
        </div>
    </form>
</x-default-layout>