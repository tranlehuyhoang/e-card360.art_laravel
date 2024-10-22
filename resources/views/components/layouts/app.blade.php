<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        @livewireStyles
    </head>
    <div style="display: flex; flex-wrap: wrap;">
        @for ($i = 1; $i <= 44; $i++)
            <a href="/mau-{{ $i }}" style="margin: 5px;">{{ $i }}</a>
        @endfor
    </div>
    <body>
        {{ $slot }}
        @livewireScripts
    </body>
</html>
