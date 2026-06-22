<h1 align = "center" >🐧 Script de Administración de Usuarios en Linux</h1>

Script en Bash para la gestión de usuarios, creación de directorios, asignación de permisos y copias de seguridad en sistemas Linux.

## 📖 Descripción

Este script automatiza tareas comunes de administración de usuarios en Linux, como la comprobación y creación de usuarios, la generación de su estructura de carpetas y la realización de copias de seguridad. Está diseñado para entornos educativos (SMR/ASIR) y para administradores que quieran ahorrar tiempo en tareas repetitivas.

## ⚙️ Funcionalidades

- 📄 **Procesa listas de alumnos**: Lee un archivo `alumnos.txt` y procesa nombres específicos (Ana, Juan, Marta, Pedro).
- 👤 **Comprueba y crea usuarios**: Verifica si un usuario existe en el sistema y, si no, lo crea con `useradd`.
- 📂 **Crea estructura de directorios**: Genera carpetas (`tareas`, `examenes`, `copias`) y asigna permisos `775`.
- 🔒 **Asigna permisos y grupos**: Usa `chmod` y `chgrp` para configurar los permisos correctamente.
- 💾 **Realiza copias de seguridad**: Utiliza `rsync` para copiar la carpeta `/home/usuario` a `/tareas/`.
- 🏗️ **Configura plantillas de usuarios**: Añade carpetas y archivos a `/etc/skel` para que los nuevos usuarios las hereden.
- 📄 **Genera archivos de tareas**: Crea 30 archivos `tarea X.txt` en la carpeta `tareas`.

## 📋 Requisitos

- Sistema Linux (Debian, Ubuntu, etc.)
- Bash 4.0 o superior
- Permisos de superusuario (`sudo`) para crear usuarios y modificar `/etc/skel`

## 🚀 Cómo usarlo

1. **Clona el repositorio**:
   ```bash
   git clone https://github.com/tuusuario/linux-user-management-script.git
   cd linux-user-management-script
Asegura que el script tiene permisos de ejecución:

bash
chmod +x prueba1.sh
Crea un archivo alumnos.txt con los nombres a procesar (uno por línea):

bash
echo -e "Ana\nJuan\nMarta\nPedro" > alumnos.txt
Ejecuta el script (necesitarás permisos de administrador para algunas partes):

bash
sudo ./prueba1.sh
🛠️ Estructura del script
Parte	Función
Parte 1	Lee alumnos.txt y procesa nombres específicos.
Parte 2,5,7	Comprueba si el usuario existe. Si existe, crea carpetas y hace backup. Si no, lo crea y hace lo mismo.
Parte 3	Añade carpetas a /etc/skel (plantilla de usuarios).
Parte 6	Crea 30 archivos de tarea en tareas.
Parte 8	Crea un archivo registro.log.
🖥️ Ejemplo de ejecución
bash
# Al ejecutar el script, verás algo como:
Esta es la parte 1
Procesando Ana .....
Procesando Juan
Procesando Marta .....
Procesando Pedro .....

# Luego te preguntará por un usuario:
Introduce un nombre de usuario y vamos a comprobar si existe: pepe
El usuario no existe en el sistema
Introduce el usuario que quieres añadir: pepe
# ... (el script crea el usuario y las carpetas)
👤 Autor
Hugo Arco
Estudiante de SMR | Apasionado por la automatización, redes y administración de sistemas
GitHub · Gmail

📄 Licencia
Este proyecto está bajo la licencia MIT.
Consulta el archivo LICENSE para más información.

<p align="center"> <b>Hecho con ❤️ y Bash</b> </p> ```
