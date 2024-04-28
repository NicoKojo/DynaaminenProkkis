<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Event;
use App\Models\Registration;

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

    public function registerSubmit(Request $request)
{
    $request->validate([
        'first_name' => 'required',
        'last_name' => 'required',
        'email' => 'required|email',
        'event_id' => 'required|exists:events,id',
    ]);

    $registration = new Registration();
    $registration->first_name = $request->first_name;
    $registration->last_name = $request->last_name;
    $registration->email = $request->email;
    $registration->event_id = $request->event_id;
    $registration->save();

    return redirect()->route('events.index')->with('success', 'Ilmoittautuminen onnistui!');
}

public function destroy(Event $event) //Tapahtuman poisto
{
    $event->delete();
    return redirect()->route('events.index')->with('success', 'Tapahtuma poistettu.');
}

//Tapahtumalistauksen tavaraa.
public function retrieveList()
    {
        $events = Event::all();
        return view('omasivu', ['events' => $events]);
    }

}
