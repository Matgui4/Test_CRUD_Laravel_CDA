<?php

namespace App\Http\Controllers;

use App\Http\Requests\PostRequest;
use App\Models\Category;
use App\Models\Post;
use App\Models\Tag;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\View\View;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('admin.posts.index', [
            'posts' => Post::without('category', 'tags')->latest()->get(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return $this->showForm();
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Post $post): View
    {
        return $this->showForm($post);
    }

    protected function showForm(Post $post = new Post): View
    {
        return view("admin.posts.form", [
            'post' => $post,
            'categories' => Category::orderBy('name')->get(),
            'tags' => Tag::orderBy('name')->get(),
        ]);
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(PostRequest $request): RedirectResponse
    {
        return $this->save($request->validated());
    }



    /**
     * Update the specified resource in storage.
     */
    public function update(PostRequest $request, Post $post): RedirectResponse
    {
        return $this->save($request->validated(), $post);
    }

    protected function save(array $data, Post $post = null): RedirectResponse
    {
        // si une image existe déjà alors on la supprime
        if (isset($data['thumbmail'])) {
            if(isset($post->thumbmail)){
                Storage::delete($post->thumbmail);
            }
            // upload l'image dans le sous-dossier thumbmails et le stocker sur la bdd
            $data['thumbmail'] = $data['thumbmail']->store('thumbmails');
        }

        $data['excerpt'] = Str::limit($data['content'], 150);
        // créer le post avec le mass assignement ou le met à jour
        $post = Post::updateOrCreate(['id'=>$post?->id], $data);
        // pour ajouter des tags
        $post->tags()->sync($data['tag_ids'] ?? null);

        return redirect()->route('posts.show', ['post' => $post])->withStatus($post->wasRecentlyCreated ? 'Poste publié !' : 'Poste mis à jour !');
    }

    //supprimer un poste
    public function destroy(Post $post)
    {
        // effacer une image du stockage
        Storage::delete($post->thumbmail);
        //suppresssion du poste
        $post->delete();
        // redirection
        return redirect()->route('admin.posts.index');
    }
}
