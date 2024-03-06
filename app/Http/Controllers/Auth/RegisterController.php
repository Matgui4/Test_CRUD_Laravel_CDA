<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class RegisterController extends Controller
{
    // pour être redirigé si on est déjà connecté
    public function __construct()
    {
        $this->middleware('guest');
    }


    // gérer l'affichage du formulaire d'inscription
    public function showRegistrationForm(): View
    {
        return view('auth.register');
    }

    // enregistrer un nouveau membre
    public function register(Request $request): RedirectResponse
    {
        // on recupère les valeurs qui ont été validé dans les champs
        $validated = $request->validate([
            // champ requis / c'est une chaine de carractère /compris entre 5 et 255 carractères
            'name' => ['required', 'string', 'between:5,255'],
            // champ requis / format d'un mail / doit être unique dans la Table User et dans le champ email
            'email' => ['required', 'email', 'unique:users'],
            // champ requis  / c'est une chaine de carractère / avec minimum 8 carractères / il doit être confirmer avec un champ de confirmation
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);

        $validated["password"] = Hash::make($validated["password"]);

        $user = User::create($validated);

        Auth::login($user);

        return redirect()->route('home')->withStatus('Inscription réussi');

    }
}
