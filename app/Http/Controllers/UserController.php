<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    // Muestra una lista de todos los usuarios
    public function index()
    {
        $users = User::all(); // Obtener todos los usuarios
        return view('users.index', compact('users'));
    }

    // Muestra el formulario para crear un nuevo usuario
    public function create()
    {
        return view('users.create');
    }

    // Almacena un nuevo usuario en la base de datos
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:8',
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);

        return redirect()->route('users.index')->with('success', 'Usuario creado exitosamente.');
    }

    // Muestra un usuario específico
    public function show($id)
    {
        $user = User::findOrFail($id);
        return view('users.show', compact('user'));
    }

    // Método para mostrar el formulario de edición
    public function edit($id)
    {
        $user = User::findOrFail($id); // Buscar el usuario por ID
        return view('users.edit', compact('user')); // Pasar el usuario a la vista
    }

    // Método para actualizar el usuario
    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users,email,' . $id,
        ]);
    
        $user = User::findOrFail($id);
        $user->update($request->all()); // Actualizar el usuario
    
        return redirect()->route('users.index')->with('status', 'Usuario actualizado exitosamente!');
    }

    // Método para eliminar un usuario
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->delete(); // Eliminar el usuario
    
        return redirect()->route('users.index')->with('status', 'Usuario eliminado exitosamente!');
    }
}
