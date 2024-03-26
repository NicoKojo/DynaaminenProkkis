<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class middleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        return $next($request);
    }
}

class CheckRole
{
    public function handle($request, Closure $next, $role)
    {
        if (!Auth::check()) // I'm assuming this should be a guest user
            return redirect('/dashboard');

        $user = Auth::user();

        if($user->role == $role)
            return $next($request);

        return redirect('/login');
    }
}
