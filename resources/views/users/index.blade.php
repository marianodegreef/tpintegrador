<!-- resources/views/users/index.blade.php -->

@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Lista de Usuarios</h1>
    
    <!-- Verificar si hay usuarios para mostrar -->
    @if($users->isEmpty())
        <p>No hay usuarios para mostrar.</p>
    @else
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Fecha de Creación</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                    <tr>
                        <td>{{ $user->id }}</td>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->created_at->format('d/m/Y') }}</td>
                        <td>
                            <a href="{{ route('users.show', $user->id) }}" class="btn btn-info btn-sm">Ver</a>
                            <a href="{{ route('users.edit', $user->id) }}" class="btn btn-warning btn-sm">Editar</a>
                            <form action="{{ route('users.destroy', $user->id) }}" method="POST" style="display:inline;">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('¿Estás seguro de que deseas eliminar este usuario?')">Eliminar</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    @endif
</div>
@endsection
