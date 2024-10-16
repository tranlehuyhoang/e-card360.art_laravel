<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        @livewireStyles
    </head>
    <li><a href="/mau-1">Mẫu 1</a></li>
    <li><a href="/mau-2">Mẫu 2</a></li>
    <li><a href="/mau-3">Mẫu 3</a></li>
    <li><a href="/mau-4">Mẫu 4</a></li>
    <li><a href="/mau-5">Mẫu 5</a></li>
    <li><a href="/mau-6">Mẫu 6</a></li>
    <li><a href="/mau-7">Mẫu 7</a></li>
    <li><a href="/mau-8">Mẫu 8</a></li>
    <li><a href="/mau-9">Mẫu 9</a></li>
    <li><a href="/mau-10">Mẫu 10</a></li>
    <li><a href="/mau-11">Mẫu 11</a></li>
    <li><a href="/mau-12">Mẫu 12</a></li>
    <li><a href="/mau-13">Mẫu 13</a></li>
    <li><a href="/mau-14">Mẫu 14</a></li>
    <body>
        {{ $slot }}
        @livewireScripts
    </body>
</html>
