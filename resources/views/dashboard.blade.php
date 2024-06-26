<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Etusivu') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-2xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">
                    Olet kirjautunut sisälle, tervetuloa {{ Auth::user()->name }}!

                    <form method="GET" action="{{ route('omasivu') }}">
                        <button type="submit" 
                        style="padding: 10px 20px; 
                        background-color: #007bff; 
                        color: #fff; 
                        border: none; 
                        border-radius: 5px; 
                        cursor: pointer; 
                        font-size: 16px; 
                        transition: background-color 0.3s ease;
                        ">Omat tiedot</button>
                    </form>

                </div>            
        </div>
    </div>

    </div>

            <!-- Luo tapahtuma -painike vain adminille -->
            @if(Auth::user()->role == 'admin')
        <div class="py-12">
            <div class="max-w-2xl mx-auto sm:px-6 lg:px-8">
                <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                    <div class="p-6 text-gray-900">
                        <form method="GET" action="{{ route('events.create') }}">
                            <button type="submit"  style="padding: 10px 20px; 
                        background-color: #007bff; 
                        color: #fff; 
                        border: none; 
                        border-radius: 5px; 
                        cursor: pointer; 
                        font-size: 16px; 
                        transition: background-color 0.3s ease;
                        ">Luo uusi tapahtuma</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    @endif

<div class="py-12">
    <div class="max-w-2xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

            <div class="p-6 text-gray-900">
                {{ __(' Tällä sivulla on tietoa lippukunnista ja linkit heidän kotisivuille.')}}

                        <form method="GET" action="{{ route('lippukunta') }}">
                        <button type="submit" style="padding: 10px 20px; 
                        background-color: #007bff; 
                        color: #fff; 
                        border: none; 
                        border-radius: 5px; 
                        cursor: pointer; 
                        font-size: 16px; 
                        transition: background-color 0.3s ease;
                        ">Lippukunta</button>
                        </form>
            </div>
        </div>
    </div>
</div>


<div class="py-12">
    <div class="max-w-2xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

            <div class="p-6 text-gray-900">
                {{ __(' Tällä sivulla on tietoa tapahtumista sekä ilmottautuminen..')}}

                        <form method="GET" action="{{ route('tapahtumat') }}">
                        <button type="submit"
                        style="padding: 10px 20px; 
                        background-color: #007bff; 
                        color: #fff; 
                        border: none; 
                        border-radius: 5px; 
                        cursor: pointer; 
                        font-size: 16px; 
                        transition: background-color 0.3s ease;
                        ">Tapahtumat</button>
                        </form>
            </div>
        </div>
    </div>
</div>

<div class="p-6 text-gray-900">
    Tämä on salainen partio sivu!

    @if(Auth::user()->role == 'scout')
        <form method="GET" action="{{ route('partio') }}">
            <button type="submit">Partiolaisille</button>
        </form>
    @endif
</div>

    

</x-app-layout>
