<!-- resources/views/users/edit.blade.php -->
@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Editar Usuario</h1>
    
    <form action="{{ route('users.update', $user->id) }}" method="POST">
        @csrf
        @method('PUT') <!-- Método PUT para la actualización -->
        
        <div class="form-group">
            <label for="name">Nombre</label>
            <input type="text" class="form-control" id="name" name="name" value="{{ old('name', $user->name) }}" required>
        </div>
        
        <div class="form-group">
            <label for="email">Correo Electrónico</label>
            <input type="email" class="form-control" id="email" name="email" value="{{ old('email', $user->email) }}" required>
        </div>

        <button type="submit" class="btn btn-primary">Actualizar Usuario</button>
        <a href="{{ route('users.index') }}" class="btn btn-secondary">Cancelar</a>
    </form>
</div>
@endsection
