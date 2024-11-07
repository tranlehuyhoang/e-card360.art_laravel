<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckUserLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next)
    {
        // Kiểm tra nếu người dùng đã đăng nhập và có vai trò 'user'
        if (Auth::check() && Auth::user()->hasRole('user')) {
            // Nếu có vai trò 'user', chuyển hướng tới trang /user
            return redirect('/user');
        }

        // Nếu không, tiếp tục yêu cầu
        return $next($request);
    }
}
