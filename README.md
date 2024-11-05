<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

# Tp integrador

## Descripción

El proyecto **Tp integrador** es una aplicación desarrollada en Laravel que permite la gestión de usuarios para registrar, editar y eliminar los mismos.

## Características

- Registro y autenticación de usuarios.
- CRUD (Crear, Leer, Actualizar, Eliminar) de usuarios.
- Interfaz amigable con Bootstrap.
- Mensajes de validación en español.

## Requisitos del sistema

- PHP >= 7.3
- Composer
- Laravel >= 8.x
- MySQL o SQLite

## Instalación

Sigue estos pasos para instalar y configurar el proyecto:

1. Clona el repositorio:

   ```bash
   git clone https://github.com/marianodegreef/tpintegrador.git
   ```

2. Ingresa al proyecto:

   ```bash
   cd tpintegrador
   ```

3. Instala las dependencias:

   ```bash
   composer install
   ```

4. Copia el archivo **.env.example** a **.env** y configura tus variables de entorno, especialmente las relacionadas con la base de datos:

   ```bash
   cp .env.example .env
   ```

5. Genera la clave de la aplicación:

   ```bash
   php artisan key:generate
   ```

8. Inicia el servidor de desarrollo:

   ```bash
   php artisan serve
   ```

# Rutas

GET	/	Página de inicio

GET	/login	Formulario de inicio de sesión

POST	/login	Autenticación de usuario

GET	/register	Formulario de registro

POST	/register	Registro de nuevo usuario

GET	/users	Listar todos los usuarios

GET	/users/create	Formulario para crear usuario

POST	/users	Almacenar nuevo usuario

GET	/users/{id}	Mostrar detalles del usuario

GET	/users/{id}/edit	Formulario para editar usuario

PUT	/users/{id}	Actualizar usuario

DELETE	/users/{id}	Eliminar usuario

# Base de datos

En la carpeta raíz del proyecto, se ubica el archivo sql correspondiente a la base de datos utilizada. Se puede descargar desde el link: [de_greef_mariano.sql](https://github.com/marianodegreef/tpintegrador/blob/main/de_greef_mariano.sql)  

# Uso

## Modelo de Objetos

El modelo de objetos es una representación estructurada de las entidades y sus relaciones dentro del sistema. En nuestra aplicación, hemos definido varias clases que representan las diferentes entidades del dominio. A continuación, se detallan los principales modelos utilizados en el proyecto:

## 1. Usuario (User)

**Descripción**

La clase User representa a los usuarios del sistema.

**Atributos**

id: Identificador único del usuario.

name: Nombre del usuario.

email: Dirección de correo electrónico del usuario.

password: Contraseña del usuario (almacenada de forma segura).

created_at: Fecha y hora de creación del usuario.

updated_at: Fecha y hora de la última actualización del usuario.


**Métodos**

create(): Crea un nuevo usuario.

update(): Actualiza la información de un usuario existente.

delete(): Elimina un usuario del sistema.

find($id): Busca un usuario por su ID.

all(): Devuelve todos los usuarios.


## 2. Controlador de Usuarios (UserController)

**Descripción**

La clase UserController gestiona las operaciones relacionadas con los usuarios, actuando como intermediario entre la vista y el modelo.

**Métodos**

index(): Muestra una lista de todos los usuarios.

create(): Muestra el formulario para crear un nuevo usuario.

store(Request $request): Almacena un nuevo usuario en la base de datos.

show($id): Muestra los detalles de un usuario específico.

edit($id): Muestra el formulario para editar un usuario existente.

update(Request $request, $id): Actualiza la información de un usuario específico.

destroy($id): Elimina un usuario específico del sistema.


# Relación entre Objetos

**Relaciones**

En este modelo, un usuario puede tener múltiples roles (si se implementa un sistema de roles), y cada rol puede ser asignado a múltiples usuarios. Esto puede reflejarse en un modelo de muchos a muchos.

# Validaciones

Se incluyó validaciones en registro y autenticación de usuario con mensajes en español para asegurar que los datos de los usuarios sean correctos antes de almacenarlos en la base de datos.

# Seguridad

La gestión de contraseñas se realiza de manera segura. En este proyecto, se ha utilizado el paquete de autenticación de Laravel, que proporciona un sistema robusto y seguro para gestionar el registro e inicio de sesión.

# Autenticación

Laravel facilita la implementación de autenticación mediante su paquete laravel/ui, que permite generar rápidamente las rutas y vistas necesarias para el manejo de usuarios. Este paquete incluye controladores y vistas predefinidas que se pueden personalizar según las necesidades de la aplicación.

## Arquitectura

El proyecto sigue una arquitectura MVC (Model-View-Controller) típica de Laravel:

<ul>
  <li><b>Models: </b> Definición de las entidades y sus relaciones.</li>
  <li><b>Controllers: </b> Gestión de la lógica de negocio y las operaciones CRUD.</li>
  <li><b>Routes: </b> Definición de los endpoints de la API.</li>
</ul>

<hr>

- [Linkedin Autor](https://linkedin.com/in/mariano-de-greef).  

- [Email Autor](mailto:degreefmariano@gmail.com).
