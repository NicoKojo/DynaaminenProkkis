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
                        <option value="{{ $event->id }}">{{ $event->name }}</option>
                    @endforeach
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Ilmoittaudu</button>
        </form>
    </div>
</x-app-layout>
