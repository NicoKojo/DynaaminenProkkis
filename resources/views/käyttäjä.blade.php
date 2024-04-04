<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Lisää uusi käyttäjä') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <div class="p-6 sm:px-20 bg-white border-b border-gray-200">
                    <form method="POST" action="{{ route('kayttaja-tallenna') }}">
                        @csrf

                        <div>
                            <x-label for="etunimi" :value="__('Etunimi')" />

                            <x-input id="etunimi" class="block mt-1 w-full" type="text" name="etunimi" :value="old('etunimi')" required autofocus />
                        </div>

                        <div class="mt-4">
                            <x-label for="sukunimi" :value="__('Sukunimi')" />

                            <x-input id="sukunimi" class="block mt-1 w-full" type="text" name="sukunimi" :value="old('sukunimi')" required />
                        </div>

                        <div class="mt-4">
                            <x-label for="sahkoposti" :value="__('Sähköposti')" />

                            <x-input id="sahkoposti" class="block mt-1 w-full" type="email" name="sahkoposti" :value="old('sahkoposti')" required />
                        </div>

                        <div class="flex items-center justify-end mt-4">
                            <x-button class="ml-4">
                                {{ __('Tallenna') }}
                            </x-button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>