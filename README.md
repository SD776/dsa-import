# DSA IMPORTS

## Requisitos para ejecutar el proyecto
1. Tener instalado PHP 8. En caso de no tenerlo, se puede instalar a través del XAMPP o el WampServer que se explica a continuación como instalar.

## Pasos para ejecutar el módulo de desarrollo
1. Descargar e instalar [XAMPP](https://www.apachefriends.org/es/download.html). Actualmente la versión que tiene es con PHP 8, cualquiera de las versiones, sea 8.1, 8.2, funcionará.

<img src="https://i.imgur.com/EFn3qqt.png" style="max-width: 500px; width: 100%; height: auto; padding-bottom: 50px;" alt="XAMPP" />  


2. Descargar o clonar el repositorio de GitHub.

<img src="https://i.imgur.com/agz3sPe.png" style="max-width: 500px; width: 100%; height: auto; padding-bottom: 50px;" alt="XAMPP" />  


3. Una vez descargado o clonado el repositorio, hay que asegurarse que la carpeta del proyecto se encuentre en la ruta:
```
C:\xampp\htdocs
```
La ruta final debería de quedar como
```
C:\xampp\htdocs\proyecto-dsa
```

## Iniciar el módulo de desarrollo
1. Se debe ejecutar el XAMPP e iniciar los módulos de Apache y MySQL. Si pide acceso al firewall para ejecución de los módulos, otorgar los pérmisos. Al hacer esto, debería quedar algo como:

<img src="https://i.imgur.com/uP76GCZ.png" style="max-width: 500px; width: 100%; height: auto; padding-bottom: 50px;" alt="XAMPP" />  

2. El archivo SQL que se encuentra en el repositorio de se debe importar al gestor de base de datos de PhpMyAdmin de la siguiente manera:

    2.1. Ingresar a phpMyAdmin y crear la base de datos con el nombre "sistema"  
    <img src="https://i.imgur.com/iip9ks2.jpeg" style="max-width: 1000px; width: 100%; height: auto; padding-bottom: 50px;" alt="XAMPP" />  

    2.2. Una vez creada la base de datos se debe importar el archivo SQL llamado "sistema". Hay que asegurarse de seleccionar la base de datos creada anteriormente para poder importar el archivo.  
    <img src="https://i.imgur.com/GST8oUN.jpeg" style="max-width: 1000px; width: 100%; height: auto; padding-bottom: 50px;" alt="XAMPP" />  

3. Una vez hecho lo anterior, ya se puede acceder a través del navegador a la ruta de acceso de la aplicación:

```
localhost/dsaimports
```

# Ingresar a la aplicacion

Los datos de acceso iniciales para entrar a la aplicación son:  

```
Admin:

email: vmujica@dsaimports.com
password: 12345

Gerente:

email: gerentudo@dsaimports.com
password: 12345

Vendedor:

email: vendedorudo@dsaimports.com
password: 12345

Cobrador:

email: cobradorudo@dsaimports.com
password: 12345
```
