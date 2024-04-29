<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Tapahtumat') }}
        </h2>
    </x-slot>

    <div>
        Tällä sivulla on tietoa tulevista tapahtumista, sekä niihin ilmoittautuminen.
    </div>

    <br>
    <br>

    <div class="mt-4">

        @foreach ($events as $event)
    @php
        $eventStart = \Carbon\Carbon::parse($event->start_time);
        $currentTime = \Carbon\Carbon::now();
        $hoursUntilStart = $currentTime->diffInHours($eventStart, false);
    @endphp

    @if ($hoursUntilStart > 24)  <!-- Näytetään vain tapahtumat, jotka alkavat yli 24 tunnin kuluttua -->
        <div class="border rounded p-4 mb-4">
            <h3 class="font-semibold text-lg">{{ $event->name }}</h3>
            <p><strong>Paikka:</strong> {{ $event->location }}</p>
            <p><strong>Aloitus aika:</strong> {{ $event->start_time }}</p>
            <p><strong>Lopetus aika:</strong> {{ $event->end_time }}</p>
            <p><strong>Kuvaus:</strong> {{ $event->description }}</p>

            @if(Auth::user()->role == 'admin')
                <form action="{{ route('events.destroy', $event->id) }}" method="POST">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger">Poista tapahtuma</button>
                </form>
            @endif

            <div>
                @if ($event->osallistujat == 1 && Auth::user()->role == 'scout')
                    <a href="{{ route('events.register') }}" class="btn btn-primary"
                    style="padding: 4px 2px; 
                        background-color: #007bff; 
                        color: #fff; 
                        border: none; 
                        border-radius: 5px; 
                        cursor: pointer; 
                        font-size: 16px; 
                        transition: background-color 0.3s ease;
                        ">Ilmoittaudu tästä</a>
                @elseif ($event->osallistujat == 2 && (Auth::user()->role == 'scout' || Auth::user()->role == 'parent'))
                    <a href="{{ route('events.register') }}" class="btn btn-primary"
                    style="padding: 4px 2px; 
                        background-color: #007bff; 
                        color: #fff; 
                        border: none; 
                        border-radius: 5px; 
                        cursor: pointer; 
                        font-size: 16px; 
                        transition: background-color 0.3s ease;
                        ">Ilmoittaudu tästä</a>
                @elseif ($event->osallistujat == 3)
                    <a href="{{ route('events.register') }}" class="btn btn-primary"
                    style="padding: 4px 2px; 
                        background-color: #007bff; 
                        color: #fff; 
                        border: none; 
                        border-radius: 5px; 
                        cursor: pointer; 
                        font-size: 16px; 
                        transition: background-color 0.3s ease;
                        ">Ilmoittaudu tästä</a>
                @endif
            </div>
        </div>
    @endif
@endforeach

</div>
</x-app-layout>

