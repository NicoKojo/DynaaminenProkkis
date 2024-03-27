<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Event;

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
            'duration_days' => 'required|numeric',
            'description' => 'required',
        ]);

        Event::create($validatedData);

        return redirect()->route('tapahtumat')->with('success', 'Event created successfully.'); // tämä palauttaa halutun sivun sen jälkeen kun tapahtuma on luotu onnistuneesti
    }

    public function index()
    {
        $events = Event::all();
        return view('tapahtumat', compact('events'));
    }
}
