<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Comment;
use App\Models\Post;
use App\Models\Tag;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class PostController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->only('comment');
    }

    //acces a notre page d'accueil, le $request sert à récupérer les query string pour la recherche
    public function index(Request $request): View
    {
        // $posts = Post::query();
        // if ($search = $request->search) {
        //     // creer un query builder, '%' pour inquiquer que la valeur de recherche se retrouve partout
        //     $posts->where(fn (Builder $query) => $query
        //     ->where('title', 'LIKE', '%' . $search . '%')
        //         ->orWhere('content', 'LIKE', '%' . $search . '%')
        //     );
        // }

        // return view('posts.index', [
        //     'posts' => $posts->latest()->paginate(10),
        // ]);
        return $this->postsView($request->search ? ['search'=>$request->search] : []);
    }

    public function postsByCategory(Category $category): View
    {
        // return view('posts.index', [
        //     // pour tout récupérer sans filtre on utilise la propriété post, mais si on veut appliquer des contraintes comme paginate, on utilise la methode posts()
        //     // 'posts' => $category->posts()->latest()->paginate(10),
        //     'posts' => Post::where(
        //         'category_id',
        //         $category->id
        //     )->latest()->paginate(10),

        // ]);
        return $this->postsView(['category' =>$category]);
    }

    public function postsByTag(Tag $tag): View
    {
        return $this->postsView(['tag' =>$tag]);
    }

    protected function postsView(array $filters):view
    {
        return view('posts.index', [
            'posts' => Post::filters($filters)->latest()->paginate(10),
        ]);
    }

    public function show(Post $post): View
    {
        return view('posts.show', [
            'post' => $post,
        ]);
    }

    public function comment(Post $post, Request $request): RedirectResponse
    {
        $validated = $request->validate([
            'comment'=>['required', 'string', 'between:2,255'],
        ]);

        // création d'une nouvelle entrée dans la Table
        Comment::create([
            'content'=>$validated['comment'],
            'post_id'=>$post->id,
            'user_id'=>Auth::id(),
        ]);

        return back()->withStatus('Commentaire publié !');

    }
}
