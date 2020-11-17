<?php

namespace App\Http\Middleware;

use KKSI;
use Closure;

class CekRolePembimbing
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
        if (!isPerusahaan()) {
            return redirect('dashboard');
        }
        return $next($request);
    }
}
