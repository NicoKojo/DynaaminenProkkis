<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ParentRegister;
use Illuminate\Support\Facades\Auth;


class ParentController extends Controller
{
    public function register(Request $request)
    {
        // Validate the request data
        $validatedData = $request->validate([
            'pccountry' => 'required',
            'pcname' => 'required',
            'pcscoutid' => 'required',
            'pctroop' => 'required',
            'pccircle' => 'required',
            'pcage' => 'required|date',
        ]);

        $parentName = Auth::user()->name;

        // Create a new ParentRegister instance
        $parentRegister = new ParentRegister();

        // Assign the validated data to the model properties
        $parentRegister->pccountry = $validatedData['pccountry'];
        $parentRegister->pcname = $validatedData['pcname'];
        $parentRegister->pcscoutid = $validatedData['pcscoutid'];
        $parentRegister->pctroop = $validatedData['pctroop'];
        $parentRegister->pccircle = $validatedData['pccircle'];
        $parentRegister->pcage = $validatedData['pcage'];
        $parentRegister->parentname = $parentName;

        // Save the model to the database
        $parentRegister->save();

        // Redirect back or to any other page
        return redirect()->back()->with('success', 'Registration successful!');
    }
}
