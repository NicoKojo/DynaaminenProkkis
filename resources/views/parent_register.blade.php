<x-guest-layout>
    <form action="{{ route('register.parent') }}" method="post">
        @csrf
        <div id="inputField">
            <input type="text" name="pccountry" id="country" placeholder="maa"><br>
            <input type="text" name="pcname" id="pcname" placeholder="Lapsen nimi"><br>
            <input type="text" name="pcscoutid" id="pcscoutid" placeholder="partio id"><br>
            <input type="text" name="pctroop" id="pctroop" placeholder="lippukunta"><br>
            <input type="text" name="pccircle" id="pccircle" placeholder="piiri"><br>
            <input type="date" name="pcage" id="pcage" placeholder="">
            <label for="age" class="age-label">syntymäaika</label><br>
            <button type="submit">Submit</button>
        </div>
    </form>
</x-guest-layout>