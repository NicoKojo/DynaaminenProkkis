<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Ilmoittautuminen') }}
        </h2>
    </x-slot>

    <div>
        <form action="{{ route('events.register.submit') }}" method="POST">
            @csrf
            <div>
                <label for="event_id">Valitse tapahtuma:</label>
                <select name="event_id" id="event_id">
    @foreach($events as $event)
        @php
            $eventStart = \Carbon\Carbon::parse($event->start_time);
            $currentTime = \Carbon\Carbon::now();
            $hoursUntilStart = $currentTime->diffInHours($eventStart, false);
        @endphp
        @if($hoursUntilStart > 24)
            @if((Auth::user()->role == 'admin') || 
               (Auth::user()->role == 'scout' && $event->osallistujat == 1) || 
               (Auth::user()->role == 'parent' && $event->osallistujat == 2) ||
               $event->osallistujat == 3)
                <option value="{{ $event->id }}">{{ $event->name }}</option>
            @endif
        @endif
    @endforeach
</select>
            </div>
            <button type="submit" class="btn btn-primary">Ilmoittaudu</button>
        </form>
    </div>
</x-app-layout>
