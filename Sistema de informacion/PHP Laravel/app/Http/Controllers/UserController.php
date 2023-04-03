<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        $users=User::paginate(5);

        return view('users.index', compact('users'));


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
     return view('users.partials.create');

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

         $validacion= $request->validate([
            'identificación' => ['unique:users,Cedula'],
            'Correo' => ['unique:users,email']

        ]);
        
        $Registro = new User;
        $Registro->Cedula = $request->identificación;
        $Registro->Nombre1 = $request->Nombre1;
        $Registro->Nombre2 = $request->Nombre2;
        $Registro->Apellido1 = $request->Apellido1;
        $Registro->Apellido2 = $request->Apellido2;
        $Registro->Tipo_Documento = $request->docu;
        $Registro->Genero = $request->genero;
        $Registro->email = $request->Correo;
        $Registro->password = Hash::make($request->password);

        $Registro->save();

        //return redirect()->route('users.index')->with('info', 'Usuario registrado con exito');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $users= User::find($id);
                 $roles = Role::get();

          return view('users.partials.edit',compact('users','roles'));     
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $users, $id)
    {
        $users = User::find($id);
        $users->Cedula = $request->identificación;
        $users->Nombre1 = $request->Nombre1;
        $users->Nombre2 = $request->Nombre2;
        $users->Apellido1 = $request->Apellido1;
        $users->Apellido2 = $request->Apellido2;
        $users->email = $request->Correo;
        $users->roles()->sync($request->get('roles'));


        $users->save();
          return redirect()->route('users.index');     

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
