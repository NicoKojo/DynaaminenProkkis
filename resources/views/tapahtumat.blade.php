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
<br>
<br>

<div class="mt-4">
        @foreach ($events as $event)
            <div class="border rounded p-4 mb-4">
                <h3 class="font-semibold text-lg">{{ $event->name }}</h3>
                <p><strong>Location:</strong> {{ $event->location }}</p>
                <p><strong>Start Time:</strong> {{ $event->start_time }}</p>
                <p><strong>Duration (Days):</strong> {{ $event->duration_days }}</p>
                <p><strong>Description:</strong> {{ $event->description }}</p>
            </div>
        @endforeach
    </div>

<a href="{{ route('events.create') }}" class="btn btn-primary">Luo tapahtuma</a>

</x-app-layout>
