<!-- resources/views/users/show.blade.php -->
@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="mb-4">Detalles del Usuario</h1>

    <div class="card">
        <div class="card-header">
            <h5 class="card-title">{{ $user->name }}</h5>
        </div>
        <div class="card-body">
            <h6 class="card-subtitle mb-2 text-muted">Información del Usuario</h6>
            <p><strong>Email:</strong> {{ $user->email }}</p>
            <p><strong>ID:</strong> {{ $user->id }}</p>
            <p><strong>Fecha de Creación:</strong> {{ $user->created_at->format('d/m/Y') }}</p>
            <p><strong>Última Actualización:</strong> {{ $user->updated_at->format('d/m/Y') }}</p>
        </div>
        <div class="card-footer text-right">
            <a href="{{ route('users.index') }}" class="btn btn-secondary">Volver a la Lista de Usuarios</a>
            <a href="{{ route('users.edit', $user->id) }}" class="btn btn-warning">Editar Usuario</a>
        </div>
    </div>
</div>
@endsection
