<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Tapahtumat') }}
        </h2>
    </x-slot>

    <div>
        Tällä sivulla on tietoa tapahtumista, sekä ilmoittautuminen.
    </div>

    <br>
    <br>

    <div class="mt-4">
        @foreach ($events as $event)
            <div class="border rounded p-4 mb-4">
                <h3 class="font-semibold text-lg">{{ $event->name }}</h3>
                <p><strong>Paikka:</strong> {{ $event->location }}</p>
                <p><strong>Aloitus aika:</strong> {{ $event->start_time }}</p>
                <p><strong>Kesto (Päivissä):</strong> {{ $event->duration_days }}</p>
                <p><strong>Kuvaus:</strong> {{ $event->description }}</p>
                <div>
                    <a href="{{ route('events.register') }}" class="btn btn-primary">Ilmoittaudu</a>
                </div>
            </div>
        @endforeach
    </div>

    <a href="{{ route('events.create') }}" class="btn btn-primary">Luo tapahtuma</a>
</x-app-layout>

