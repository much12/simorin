<?php

namespace App\Http\Middleware;

use Closure;
use KKSI;

class CekRoleAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (!isAdmin()) {
            return redirect('dashboard');
        }
        return $next($request);
    }
}
