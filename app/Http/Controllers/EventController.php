<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Event;
use App\Models\Registration;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\JsonResponse;

class EventController extends Controller
{
    public function create()
    {
        return view('event');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required',
            'location' => 'required',
            'start_time' => 'required|date',
            'end_time' => 'required|date',
            'description' => 'required',
            'osallistujat' => 'required|integer',
        ]);

       

        Event::create($validatedData);

        return redirect()->route('tapahtumat')->with('success', 'Event created successfully.'); // tämä palauttaa halutun sivun sen jälkeen kun tapahtuma on luotu onnistuneesti
    }

    public function index()
    {
        $events = Event::all();
        return view('tapahtumat', compact('events'));
    }

    public function registerForm()
    {
        $events = Event::all();
        return view('register', ['events' => $events]);
    }

    public function showEventPage()
{
    $events = Event::all(); // Hae kaikki tapahtumat
    return view('event', ['events' => $events]);
}

    public function registerSubmit(Request $request)
{
// Hae kirjautunut käyttäjä
$user = Auth::user();

// Hae valittu event_id lomakkeesta
$eventId = $request->input('event_id');

// Luo uusi Registration
$registration = new Registration();
$registration->user_id = $user->id;
$registration->event_id = $eventId;
$registration->save();

// Lähetä vahvistusviesti (voisit ohjata käyttäjän uudelleen ja lisätä sessiovahvistuksen)
return redirect()->route('events.index')->with('success', 'Ilmoittautumisesi on tallennettu onnistuneesti!');
}

public function destroy(Event $event) //Tapahtuman poisto
{
    $event->delete();
    return redirect()->route('events.index')->with('success', 'Tapahtuma poistettu.');
}

//Tapahtumalistauksen tavaraa.
public function eventList()
    {
        $user = Auth::user();
        $events = $user->registrations->map(function ($registration) {
            return $registration->event;
        });

        return view('omasivu', compact('events'));
    }

}
