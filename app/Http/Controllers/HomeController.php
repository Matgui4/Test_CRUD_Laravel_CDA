<?php

namespace App\Http\Controllers;

use Closure;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
{
    // pour être redirigé si on est pas connecté
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(): View
    {
        return view('home.index');
    }
// met à jour un nouveau password
    public function updatePassword(Request $request): RedirectResponse
    {
        $user = Auth::user();
        $validated = $request->validate([
            'current_password' => [
                'required', 
                'string',
                function (string $attribute, mixed $value, Closure $fail) {
                    if (! Hash::check($value, Auth::user()->password)) {
                        $fail("Le :attribute est erroné.");
                    }
                },
            ],
            'password'=> ['required', 'string', 'min:8', 'confirmed'],
        ]);

        $user->update([
            'password'=> Hash::make($validated(['password']))
        ]);

        return redirect()->route('home')->withStatus('Mot de passe modifié');
    }
}
