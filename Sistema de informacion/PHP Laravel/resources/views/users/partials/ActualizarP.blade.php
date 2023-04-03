<!DOCTYPE html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="{{ asset('js/Validaciones/RegistrarU.js') }}" defer></script>
</head>


		<h1 class="text-center text-2xl">Actualizar Profesional</h1>

  <div class="flex flex-wrap -mx-3 mb-6 mt-8">
  	    <div class="w-full md:w-mitad px-3 mb-6 md:mb-0">
						<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-first-name">Numero de Identificación*</label>
						<input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" type="text" id="identificacion" name="identificación" value="{{$users->Cedula}}">			
		</div>
    	<div class="w-full md:w-mitad px-3">
						<label  class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-last-name">Primer Nombre*</label>	
						<input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" type="text" id="nombre" name="Nombre1" value="{{$users->Nombre1}}">		
		</div>
	</div>
				
					
  <div class="flex flex-wrap -mx-3 mb-6">
  	    <div class="w-full md:w-mitad px-3 mb-6 md:mb-0">
						<label for="exampleFormControlInput1" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Segundo Nombre</label>	
						<input  class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" type="text" id="nombre2" name="Nombre2" value="{{$users->Nombre2}}">		
		</div>
    	<div class="w-full md:w-mitad px-3">
						<label for="exampleFormControlInput1" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Primer Apellido*</label>	
						<input  class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" type="text" id="apellido" name="Apellido1"value="{{$users->Apellido1}}">		
		</div>		
	</div>

  <div class="flex flex-wrap -mx-3 mb-6">
  	    <div class="w-full md:w-mitad px-3 mb-6 md:mb-0">
			<label for="exampleFormControlInput1" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Segundo Apellido</label>
			<input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" type="text" id="apellido2" name="Apellido2" value="{{$users->Apellido2}}">
					</div>
    	<div class="w-full md:w-mitad px-3">
			<label for="exampleFormControlInput1" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Correo Electronico*</label>
			<input  class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" type="email" id="correo" name="Correo" value="{{$users->email}}">
					</div>	
	</div>

<h3>Lista de Roles</h3>
<div class="form-group">
	<ul class="list-unstyled">
		@foreach($roles as $role)

		<li>
			<label>
				
				{{Form::checkbox('roles[]',$role->id,null)}}
				{{$role->name}}
			</label>
		</li>
		@endforeach
	</ul>
	
</div>

    <button  class="w-full px-6 py-2 mt-4 text-white bg-blue-600 rounded-lg hover:bg-blue-900" type="submit" id="btn-guardar">Actualizar</button>

		
		
