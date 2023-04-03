@component('layouts.app')
@slot('content')
                <div class="panel-heading bg-blue-900">
                  
                </div>

                 {!! Form::open(['route'=>'users.store','class'=>'max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8 bg-white'])!!}

                   @include('users.partials.registrarP')

                   {!!Form::close()!!}
@endcomponent
