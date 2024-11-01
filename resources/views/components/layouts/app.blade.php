<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon"
        href="https://i.imgur.com/saxukyR.png"
        sizes="32x32" />
        @livewireStyles
    </head>
 
    <body>
        {{ $slot }}
        @livewireScripts

        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        
        <x-livewire-alert::scripts />
    </body>
</html>
