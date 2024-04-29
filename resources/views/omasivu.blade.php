
<!--<!DOCTYPE html> -->
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Omat tiedot') }}
        </h2>
    </x-slot>

       <style> 
            .munteksti{
                text-align: center;
            }
        </style>

                        @if (Route::has('login'))
                            
                        @endif
                    </header>

                    <div class ="munteksti">
                        
                    <h1><b>Omat tiedot:</b><h1>
                    <h1>Nimi: {{ Auth::user()->name }}</h1>
                    <h1>Sähköposti: {{ Auth::user()->email }}</h1>
                    <h1>Rooli: {{ Auth::user()->role }}</h1>
                    <br>

                    @if(Auth::user()->role == 'scout')
                        <h1><b>Partio tiedot:</b><h1>
                        <h1>Tunnus: {{ Auth::user()->scoutid }}</h1>
                        <h1>Joukko: {{ Auth::user()->troop }}</h1>
                        <h1>Piiri: {{ Auth::user()->circle }}</h1>

                    @elseif(Auth::user()->role == 'parent')
                        <h1><b>Huollettavien tiedot:</b></h1>
                        @php
                            $parentName = Auth::user()->name;
                            $children = \App\Models\ParentRegister::where('parentname', $parentName)->get();
                        @endphp

                        @if($children->isNotEmpty())
                    <ul>
                        @foreach($children as $child)
                            <li>
                                <h1>Lapsen nimi: {{ $child->pcname }}</h1>
                                <h1>Partio ID: {{ $child->pcscoutid }}</h1>
                                <h1>Lippukunta: {{ $child->pctroop }}</h1>
                                <h1>Piiri: {{ $child->pccircle }}</h1>
                                <h1>Syntymäaika: {{ $child->pcage }}</h1>
                            </li>
                        @endforeach
                    </ul>

                    @else
                        <p>Ei huollettavia löydetty.</p>
                    @endif

                @endif

                    <br>
                    <h1><b>Tapahtumat:</b></h1>

                    <br><center>

                    <table border="1" width="50%">
                        <tr>
                            <th>Nimi:</th>
                            <th>Paikka:</th>
                            <th>Alkaa:</th>
                            <th>Päättyy:</th>
                            <th>Kuvaus:</th>
                            <th>Ilmoittautuminen:</th>
                        </tr>

                        @foreach ($events as $event)

                        <tr>
                            <td>{{ $event->name}}</td>
                            <td>{{ $event->location}}</td>
                            <td>{{ $event->start_time}}</td>
                            <td>{{ $event->end_time}}</td>
                            <td>{{ $event->description}}</td>
                            <form action="{{ route('events.unregister', ['event' => $event->id]) }}" method="POST">
                                @csrf
                                @method('DELETE')
                                <td><button type="submit">Peruuta</button></td>
                            </form>

                        </tr>

                        @endforeach
                    </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
        </x-app-layout>
