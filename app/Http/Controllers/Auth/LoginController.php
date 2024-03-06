<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    // pour être redirigé si on est déjà connecté
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
        $this->middleware('auth')->only('logout');

    }
    public function showLoginForm(): View
    {
        return view('auth.login');
    }

    public function login(Request $request): RedirectResponse
    {
        // contient les éléments pour nous identifier / vérification de base
        $credentials = $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required', 'string'],
        ]);

        //  on tente la connexion grâce à la façade Auth
        if (Auth::attempt($credentials, (bool) $request->remember)) {
            // on régénère la session
            $request->session()->regenerate();
            // on redirige
            return redirect()->intended(RouteServiceProvider::HOME);
        }

        // redirection vers la précédente page
        return back()->withErrors([
            'email' => 'Identifiants erronés',
        ])->onlyInput('email');
    }

    // pour se déconnecter  / doc Laravel
    public function logout(Request $request): RedirectResponse
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
