<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Tapahtuman luonti') }}
        </h2>
    </x-slot>

    <form action="{{ route('events.store') }}" method="POST">
    @csrf
    <div>
        <label for="name">Tapahtuman nimi:</label>
        <input type="text" id="name" name="name" required>
    </div>
    <div>
        <label for="location">Paikka:</label>
        <input type="text" id="location" name="location" required>
    </div>
    <div>
        <label for="start_time">Aloitus aika:</label>
        <input type="datetime-local" id="start_time" name="start_time" required>
    </div>
    <div>
        <label for="end_time">Lopetus aika:</label>
        <input type="datetime-local" id="end_time" name="end_time" required>
    </div>
    <div>
        <label for="description">Kuvaus:</label>
        <textarea id="description" name="description" required></textarea>
    </div>
    <div>
    <div>
    <label>Suunnattu:</label><br>
    <input type="radio" id="scout" name="osallistujat" value="1">
    <label for="scout">Partiolainen</label><br>
    <input type="radio" id="parent" name="osallistujat" value="2">
    <label for="parent">Huoltaja + partiolainen</label><br>
    <input type="radio" id="attendee" name="osallistujat" value="3">
    <label for="attendee">Kaikki</label><br>
</div>
    </div>
        <br>
    <button type="submit">Luo tapahtuma</button>

</form>


</x-app-layout>