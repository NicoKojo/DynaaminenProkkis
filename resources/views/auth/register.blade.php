<x-guest-layout>
    <form method="POST" action="{{ route('register') }}">
        @csrf

        <!-- Name -->
        <div>
            <x-input-label for="name" :value="__('Name')" />
            <x-text-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

        <!-- Email Address -->
        <div class="mt-4">
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>



    <script> //tää piilottaa kenttiä ja oikeen JAVASCRIPTILLÄ
       function toggleAdditionalFields(role) {
        const additionalFields = document.getElementById('additional-fields');

        if (role === 'scout') {
            additionalFields.style.display = 'block';
        } else {
            additionalFields.style.display = 'none';
        }
    }

    window.addEventListener('click', function(event) {
        const scoutRadio = document.getElementById('scout');
        const additionalFields = document.getElementById('additional-fields');

        if (event.target !== scoutRadio && !scoutRadio.contains(event.target)) {
            if (event.target !== additionalFields && !additionalFields.contains(event.target) && event.target.type !== 'password') {
                additionalFields.style.display = 'none';
            }
        }
    });
        </script>





    <!--Roolit-->
    <div class="radio-button-group">
    <br>
    <input type="radio" id="scout" name="user-type" value="scout" onclick="toggleAdditionalFields('scout')" {{ old('user-type') == 'scout' ? 'checked' : '' }}>
    <label for="scout" class="radio-label">Scout</label>
    

    <input type="radio" id="parent" name="user-type" value="parent" {{ old('user-type') == 'parent' ? 'checked' : '' }}>
    <label for="parent" class="radio-label">Parent</label>

    <input type="radio" id="attendee" name="user-type" value="attendee" {{ old('user-type') == 'attendee' ? 'checked' : '' }}>
    <label for="attendee" class="radio-label">Attendee</label>
</div>


    <!--Tässä on piilotettavat kentät-->
    <div id="additional-fields" style="display: none;"> 
      
        <input type="text" name="country" id="country" placeholder="maa">
        <br>
        <input type="text" name="scoutid" id="scoutid" placeholder="partio id">
        <br>
        <input type="text" name="troop" id="troop" placeholder="lippukunta">
        <br>
        <input type="text" name="circle" id="circle" placeholder="piiri">
    </div>


        <div class="mt-4">
            <x-input-label for="password" :value="__('Password')" />

            <x-text-input id="password" class="block mt-1 w-full"
                            type="password"
                            name="password"
                            required autocomplete="new-password" />

            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        
        <div class="mt-4">
            <x-input-label for="password_confirmation" :value="__('Confirm Password')" />

            <x-text-input id="password_confirmation" class="block mt-1 w-full"
                            type="password"
                            name="password_confirmation" required autocomplete="new-password" />

            <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
            <a class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" href="{{ route('login') }}">
                {{ __('Already registered?') }}
            </a>

            <x-primary-button class="ms-4">
                {{ __('Register') }}
            </x-primary-button>
        </div>
    </form>
</x-guest-layout>
