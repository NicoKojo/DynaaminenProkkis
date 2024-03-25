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
                    {{ __("Olet kirjautunut sisälle, tervetuloa") }}

                    <form method="GET" action="{{ route('juhosivu') }}">
                        <button type="submit">Go to Juho Sivu</button>
                    </form>

                </div>

                
            
        </div>
    </div>

    </div>
<div class="py-12">
    <div class="max-w-2xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

            <div class="p-6 text-gray-900">
                {{ __('Tästä näät kaikki saatavilla olevat tapahtumat')}}

                        <form method="GET" action="{{ route('kalenteri') }}">
                        <button type="submit">Kalenteri</button>
                        </form>
            </div>
        </div>
    </div>
</div>

<div class="py-12">
    <div class="max-w-2xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

            <div class="p-6 text-gray-900">
                {{ __(' Tällä sivulla on tietoa lippukunnista ja linkit heidän kotisivuille.')}}

                        <form method="GET" action="{{ route('lippukunta') }}">
                        <button type="submit">Lippukunta</button>
                        </form>
            </div>
        </div>
    </div>
</div>


<div class="py-12">
    <div class="max-w-2xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">

            <div class="p-6 text-gray-900">
                {{ __(' Tällä sivulla on tietoa tapahtumista, sekä ilmottautuminen..')}}

                        <form method="GET" action="{{ route('tapahtumat') }}">
                        <button type="submit">Tapahtumat</button>
                        </form>
            </div>
        </div>
    </div>
</div>

</x-app-layout>
