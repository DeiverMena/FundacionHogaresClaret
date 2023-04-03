@component('layouts.app')
@slot('content')



<div class="relative overflow-x-auto shadow-md sm:rounded-lg">

    <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
        <thead class="text-base text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr>
                                <th scope="col" class="px-6 py-3">
                                Menu
   <select id="Tipomenu" name="menu" class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500">
                            <option value="dia">Menu</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>

                        </select>
                                </th>
                                 <th scope="col" class="px-6 py-3">
                                    Dias
                                    <div class="RegistroP">
                        <select id="Tipodias" name="dias" class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500">
                            <option value="dia">Dia</option>
                            <option value="Lunes">Lunes</option>
                            <option value="Martes">Martes</option>
                            <option value="Miercoles">Miercoles</option>
                            <option value="Jueves">Jueves</option>
                            <option value="Viernes">Viernes</option>
                            <option value="Sabado">Sabado</option>
                            <option value="Domingo">Domingo</option>

                        </select>
                    </div>

                                </th>

            </tr>

                            <tr>
                                <th></th>
                                <th scope="col" class="px-6 py-3">
                                Usuarios
                                </th>
                                <th scope="col" class="px-6 py-3">
                                  Empleados
                                </th>
                                 <th scope="col" class="px-6 py-3">
                                  Otros
                                </th>
                                    <th scope="col" class="px-6 py-3">
                                    Cantidades
                                </th>
                                
                             </tr>
                        </thead>
                        <tbody>


    <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
          <th scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
                    Desayuno
                </th>

        <th contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
            20
        </th>

        <th contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
            ---       
 </th>

        <th  contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
----
        </th>

        <th  scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
20        </th>
     
                                
    </tr>

    <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
          <th scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
                    Nueves
                </th>

        <th contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
            20
        </th>

        <th contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
            ---       
 </th>

        <th  contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
----
        </th>

        <th  scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
20        </th>
     
                                
    </tr>
    <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
          <th scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
                    Almuerzo
                </th>

        <th contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
            20
        </th>

        <th contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
            3       
 </th>

        <th  contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
1
        </th>

        <th  scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
24        </th>
     
                                
    </tr>
    <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
          <th scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
                    Onces
                </th>

        <th contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
            20
        </th>

        <th contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
            ---       
 </th>

        <th  contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
----
        </th>

        <th  scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
20        </th>
     
                                
    </tr>
    <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
          <th scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
                    Comida
                </th>

        <th contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
            20
        </th>

        <th contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
            ---       
 </th>

        <th  contenteditable scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
----
        </th>

        <th  scope="row" class="px-6 py-4 font-medium text-gray-900 dark:text-white whitespace-nowrap">
20        </th>
     
                                
    </tr>
         </tbody>
      </table>

      
                    
                </div>
@endcomponent
