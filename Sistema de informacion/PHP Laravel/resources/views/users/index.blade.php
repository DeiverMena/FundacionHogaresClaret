@component('layouts.app')
@slot('content')


 @can('user.create')
    <a class="text-lg" href="{{route('users.create')}}">
                        Crear Profesional
    </a>
 @endcan

<div class="relative overflow-x-auto shadow-md sm:rounded-lg">

    <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
        <thead class="text-base text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">

                            <tr>
                                <th scope="col" class="px-6 py-3">
                                Nombres
                                </th>
                                <th scope="col" class="px-6 py-3">
                                  Apellidos
                                </th>
                                 <th scope="col" class="px-6 py-3">
                                  Cedula
                                </th>
                                    <th scope="col" class="px-6 py-3">
                                    Email
                                </th>
                                 <th scope="col" class="px-6 py-3">
                                   <span class="sr-only">Accion</span> 
                                </th>
                             </tr>
                        </thead>
                        <tbody>
                            @foreach($users as $user)
    <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
        <th scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
            {{$user->Nombre1}} 
        </th>

        <th scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
            {{$user->Apellido1}} 
        </th>

        <th scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
            {{$user->Cedula}} 
        </th>

        <th scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
             {{$user->email}} 
        </th>
                                                          
        <th scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
         <a class="font-medium text-blue-600 dark:text-blue-500 hover:underline" href="{{ route('users.edit', $user->id) }}">
            Editar
         </a>                             
        </th>
                                
    </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="card-footer">
                        {{$users->links()}}
                    </div>
                </div>
@endcomponent
