# CreateApi
Crear una Api de un sistema de entradas y salidas de empleados.

### Pre-requisitos 📋
```
Tener la version de rails en 5.2.3
Crear el nuevo proyecto agregandole --api
Usar Postsgresql.
Aplicar pruebas con Capybara o Rspec.
Aplicamos la semilla (seed) para crear por default los roles si es administrador o empleados.
```
## Requisitos funcionales ⚙️
* Inicio de sesión de administrador de la empresa
* Inicio de sesión de empleado
* El administrador puede marcar la entrada y salida de sus empleados
* El administrador gestione los reportes de entrada y salida de sus empleados
* El administrador gestione la información de empleados
* El empleado revise su reporte de entrada y salida

## Routes
* /users method: post --> create users.
* /users method: get --> Mostrar users.
* /users/id method: Get ---> mostrar users por id
* /user_token method:Post --> Create token.
* /entrada_salidas method:Post ---> create e/s del users.
* /entrada_salidas/id method:Patch --> Para cambiar la fecha de la salida del users.
* /current_user/details' method:Get --> Para mandarle a mostrar a los users su informacion.

## Autores ✒️
* **Maria Jose** - *Trabajo Inicial* - [marita30](https:https://github.com/marita30)



