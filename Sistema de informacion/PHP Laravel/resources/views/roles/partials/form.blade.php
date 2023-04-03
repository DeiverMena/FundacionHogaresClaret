<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

		<h1 class="text-center text-2xl	">Registro Roles</h1>

  <div class="flex flex-wrap -mx-3 mb-6 mt-8">
  	  	    <div class="w-full md:w-mitad px-3 mb-6 md:mb-0">

	{{Form::label('name','Nombre',['class'=>'block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2'])}}
	{{Form::text('name',null,['class'=>'appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-last-name'])}}

</div>

@error('name')
	<small class="text-danger">{{$message}}</small>

@enderror



   <div class="w-full md:w-mitad px-3">
   	<h3>Lista de permisos</h3>

	<ul class="list-unstyled">
		@foreach($permissions as $permission)

		<li>
			<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">
				{{Form::checkbox('permissions[]',$permission->id,null)}}
				{{$permission->description}}
			</label>
		</li>
		@endforeach
	</ul>
	
</div>
</div>

<div class="form-group d-flex flex-row justify-content-center alig-items-center">
	{{Form::submit('Guardar',['class'=>'w-full px-6 py-2 mt-4 text-white bg-blue-600 rounded-lg hover:bg-blue-900'])}}
</div>