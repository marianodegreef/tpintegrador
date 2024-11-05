<!-- resources/views/home.blade.php -->
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Tablero') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{ __('Bienvenidos a tp Integrador') }}
                    
                    <!-- Botón que redirige a la lista de usuarios -->
                    <div class="mt-4">
                        <a href="{{ route('users.index') }}" class="btn btn-primary">
                            Ver Lista de Usuarios
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

