<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Lippukunta') }}
        </h2>
    </x-slot>

    <div>
    Tällä sivulla on tietoa lippukunnista ja linkit heidän kotisivuille.
</div>
 
<style>
    .linkki {
        display: inline-block;
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        border: 1px solid #007bff;
        transition: background-color 0.3s ease;
    }

    .linkki:hover {
        background-color: #0056b3;
    }
</style>

<div class="linkki"> <a href="https://www.partio.fi/lippukunta/oulun-metsankavijat-ry/">Oulun Metsänkävijät Ry </a></div>
<div class="linkki"> <a href="https://www.partioaitta.fi/">Partioaitta </a></div>



</x-app-layout>
