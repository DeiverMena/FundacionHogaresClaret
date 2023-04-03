<!DOCTYPE html>
<head>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="{!! asset('css/ejemplo1.css') !!}">
    <script src="{{ asset('js/Validaciones/RegistrarU.js') }}" defer></script>
</head>

		<h1 class="text-center text-2xl	">Registro Profesional</h1>

  <div class="flex flex-wrap -mx-3 mb-6 mt-8">
  	    <div class="w-full md:w-mitad px-3 mb-6 md:mb-0">

			<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-first-name">Tipo de Documento</label>
			<div class="RegistroP">
						<select id="Tipoid" name="docu" class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500">
							<option value="">--Haga una elección--</option>
							<option value="CC">Cédula de Ciudadanía</option>
							<option value="NIT">NIT</option>
							<option value="CE">Cédula de Extranjería</option>
						</select>
					</div>
		</div>

    	<div class="w-full md:w-mitad px-3">
			<label for="exampleFormControlInput1" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Numero de Identificación*</label>	
			<input type="text" id="identificacion" name="identificación"  class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-last-name">

			@error('identificación')
	<small class="text-danger">{{$message}}</small>

@enderror

		</div>
	</div>
				

  <div class="flex flex-wrap -mx-3 mb-6">
  	    <div class="w-full md:w-mitad px-3 mb-6 md:mb-0">
						<label for="exampleFormControlInput1" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Primer Nombre*</label>		
							<input type="text" id="nombre" name="Nombre1" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" >
		</div>
						
    	<div class="w-full md:w-mitad px-3">
				<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-last-name">Segundo Nombre</label>			
				<input type="text" id="nombre2" name="Nombre2" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500">
		</div>				
	</div>


  <div class="flex flex-wrap -mx-3 mb-6">
  	    <div class="w-full md:w-mitad px-3 mb-6 md:mb-0">
						<label for="exampleFormControlInput1" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Primer Apellido*</label>
						<input type="text" id="apellido" name="Apellido1" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500">
		</div>

    	<div class="w-full md:w-mitad px-3">
						<label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-last-name">Segundo Apellido</label>
						<input type="text" id="apellido2" name="Apellido2" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500">

		</div>
	</div>

  <div class="flex flex-wrap -mx-3 mb-6">
  	    <div class="w-full md:w-mitad px-3 mb-6 md:mb-0">
						<label for="exampleFormControlInput1" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Genero</label>
					<select id="genero" name="genero" class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500">
                                        	<option value="">--Seleccione un genero--</option>
                                            <option value="Femenino">Femenino</option>
                                            <option value="Masculino">Masculino</option>
                            </select>

					</div>

    	<div class="w-full md:w-mitad px-3">
						<label for="exampleFormControlInput1" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Correo Electronico*</label>
									<input type="email" id="correo" name="Correo" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500">
@error('Correo')
	<small class="text-danger">{{$message}}</small>

@enderror
									
					</div>
			</div>

  <div class="flex flex-wrap -mx-3 mb-6">
  	    <div class="w-full md:w-mitad px-3 mb-6 md:mb-0">
						<label for="exampleFormControlInput1" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Contraseña*</label>
								<input type="password"  id="pass" name="password" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500">

					</div>
    	<div class="w-full md:w-mitad px-3">
						<label for="exampleFormControlInput1" class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2">Confirmar Contraseña*</label>
							<input type="password" id="pass2" name="Contraseña2" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500">

					</div>	
					
			</div>


 <button  class="w-full px-6 py-2 mt-4 text-white bg-blue-600 rounded-lg hover:bg-blue-900" type="submit" id="btn-guardar">

  	Guardar

 		   </button>
				<span class="help-block" id="error"></span>


<div id="pswd_info">
			<h4>La contraseña debe cumplir los siguientes requerimientos:</h4>
			<ul>
				<li id="capital" class="invalid">Al menos <strong>una letra mayúscula</strong></li>
				<li id="number" class="invalid">Al menos <strong>un numero</strong></li>
				<li id="length" class="invalid">Minimo <strong>8 caracteres</strong></li>
			</ul>
		</div>
		

		
