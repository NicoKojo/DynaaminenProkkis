<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class AuthenticatedSessionController extends Controller
{
    /**
     * Display the login view.
     */
    public function create(): View
    {
        return view('auth.login');
    }

    /**
     * Handle an incoming authentication request.
     */
    public function store(LoginRequest $request)
    {
        // Validate user credentials
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            // Authentication successful, generate token
            $user = Auth::user();
            $token = $user->createToken('YourAppNameToken')->plainTextToken;

            // Regenerate session
            $request->session()->regenerate();

            // Check if request is from API
            if ($request->wantsJson()) {
                // Return token as JSON response
                return response()->json(['token' => $token]);
            } else {
                // Redirect to intended page
                return redirect()->intended(RouteServiceProvider::HOME);
            }
        }

        // Authentication failed, redirect back with error message
        return redirect()->back()->with('error', 'Invalid credentials');
    }

    /**
     * Destroy an authenticated session.
     */
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
