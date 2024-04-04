<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Ilmoittautuminen') }}
        </h2>
    </x-slot>

    <div>
        <form action="{{ route('events.register.submit') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="first_name" class="form-label">Etunimi</label>
                <input type="text" class="form-control" id="first_name" name="first_name">
            </div>
            <div class="mb-3">
                <label for="last_name" class="form-label">Sukunimi</label>
                <input type="text" class="form-control" id="last_name" name="last_name">
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Sähköposti</label>
                <input type="email" class="form-control" id="email" name="email">
            </div>
            <button type="submit" class="btn btn-primary">Ilmoittaudu</button>
        </form>
    </div>
</x-app-layout>