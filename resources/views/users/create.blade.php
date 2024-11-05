<!-- resources/views/users/create.blade.php -->
<h1>Crear Usuario</h1>
<form action="{{ route('users.store') }}" method="POST">
    @csrf
    <label for="name">Nombre:</label>
    <input type="text" name="name" required>
    <label for="email">Email:</label>
    <input type="email" name="email" required>
    <label for="password">Contraseña:</label>
    <input type="password" name="password" required>
    <button type="submit">Crear Usuario</button>
</form>
