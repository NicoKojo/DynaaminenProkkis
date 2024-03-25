<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
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
    </div>
</div>
</div>
</div>
</x-app-layout>
