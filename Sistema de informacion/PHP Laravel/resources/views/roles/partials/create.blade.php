@component('layouts.app')
@slot('content')

                <div class="panel-heading bg-blue-900  ">
                     
                </div>

                    {!! Form::open(['route'=>'roles.store','class'=>'max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8 bg-white'])!!}

                   @include('roles.partials.form')

                   {!!Form::close()!!}
@endcomponent

