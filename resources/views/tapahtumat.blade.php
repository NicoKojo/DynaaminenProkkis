<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Tapahtumat') }}
        </h2>
    </x-slot>

    <div>
    Tällä sivulla on tietoa tapahtumista, sekä ilmottautuminen.
</div>


<div> Suomun solmukurssi 21.2.2025</div>

<a href="{{ route('events.create') }}" class="btn btn-primary">Luo tapahtuma</a>

</x-app-layout>
