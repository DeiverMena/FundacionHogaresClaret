@component('layouts.app')
@slot('content')

                 @can('roles.create')
                    <a class="text-lg" href="{{route('roles.create')}}">
                        Nuevo Rol
                    </a>
                    @endcan

                  @if(session('info'))
            <div class="alert alert-success">{{session('info')}}</div>
                @endif

<div class="relative overflow-x-auto shadow-md sm:rounded-lg">
<table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
    <thead class="text-base text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                            <tr>
                                <th scope="col" class="px-6 py-3">
                                    ID
                                </th>
                                <th scope="col" class="px-6 py-3">
                                    Role
                                </th>
                             
                                <th scope="col" class="px-6 py-3">
                                    <span class="sr-only">Accion</span> 
                                </th>                          
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($roles as $role)
    <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
        <th scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
                                    {{$role->id}}
                                </th>
    <th scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">                         
                          {{$role->name}}
                                </th>
                    
                              
<th scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">           
                         @can('roles.show')
            <a class="font-medium text-blue-600 dark:text-blue-500 hover:underline" href="{{ route('roles.show', $role->id)}}">
                                        ver
                                    </a>
                                    @endcan
                        @can('roles.edit')
                                    <a class="font-medium text-blue-600 dark:text-blue-500 hover:underline" href="{{ route('roles.edit', $role->id) }}">                          editar
                                    </a>
                                    @endcan                             
                             @can('roles.destroy')
                                    {!! Form::open(['route' => ['roles.destroy', $role->id], 
                                    'method' => 'DELETE']) !!}
                                    <button class="btn btn-sm btn-danger pull-right">
                                        Eliminar
                                    </button>
                                    {!! Form::close() !!}
                                    @endcan
                                </th>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                     <div class="card-footer">
                        {{$roles->links()}}
                    </div>
         </div>
    

@endcomponent
