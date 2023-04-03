@component('layouts.app')
@slot('content')


                <div class="panel-heading bg-blue-900 text-center">
     
                </div>

                <div class="panel-body">
		{!! Form::model($users, ['route' => ['users.update', $users->id], 'method' => 'PUT','class'=>'max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8 bg-white']) !!}

                   @include('users.partials.ActualizarP')

                   {!!Form::close()!!}
            
@endcomponent

