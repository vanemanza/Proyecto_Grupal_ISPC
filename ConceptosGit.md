# Conceptos Git
Archivo para subir las definiciones que hemos marcado como Issues en el repositorio, para así evitar la modificación del README.

Template:
## Título del Issue
Descripción

## Git - Concepto (NUMERO 16)
Git es un sistema de control de versiones (VCS), es decir una herramienta de software que ayuda a los equipos desarroladores a gestionar los cambios en el código fuente a lo largo del tiempo. Además de ser distribuido, gratuito y de código abierto fue diseñado para manejar desde proyectos pequeños a muy grandes, con velocidad y eficiencia.

Características:

●Nos permite conocer los cambios realizados en los programas o software que vamos desarrollando con el paso del tiempo. Administra las distintas versiones.

●Nace como necesidad de control para el Kernel de Linux. 

●Coordinar el trabajo entre los diferentes desarrolladores del equipo.

●Repositorios Locales y Remotos.

## Git - Ventajas (NUMERO 17)
●Sistema distribuido, que permite el trabajo incluso sin conexión.
●Super rápido y ligero, optimizado para hacer operaciones de control muy rápidas.
●Crear ramas y mezclarlas poco propenso a problemas.
●La integridad de la información está asegurada gracias a su modelo de almacenamiento, que permite predecir este tipo de problemas. 
●Permite flujos de trabajo muy flexibles.
●El concepto de área de preparación o staging permite versionar los cambios como nos convenga, no todo o nada.
●Operaciones locales
●Copias instantáneas 

## Principales comandos (NUMERO 18)

###### Comandos Básicos

Git se puede ver como un set de herramientas muy completo, pero para un manejo básico de repositorios en Git es necesario conocer por lo menos, los siguientes comandos:

● **_git init_** es el comando para inicializar un directorio como repositorio Git, se ejecuta dentro del directorio del proyecto, y como resultado crea un subdirectorio. Git que contiene todos los archivos para poder realizar el seguimiento de los cambios, etiquetas, etc.

● **_git add_** 'archivo' luego de la creación, modificación o eliminación de un archivo, los cambios quedan únicamente en el área de trabajo, por lo tanto es necesario pasarlos al área de preparación mediante el uso del comando git add , para que sea incluido dentro de la siguiente Confirmación 'cometer'.

● **_git status_** es un comando que permite conocer en qué estado se encuentran los archivos.

● **_git commit_**, con este comando se confirman todos los cambios registrados en el área de preparación, o lo que es lo mismo, se pasan los cambios al repositorio local.

● **_git push_** es el comando que se utiliza para enviar todas las confirmaciones registradas en el repositorio local a un repositorio remoto.

● **_git pull_** funciona al inverso de git push, trayendo todos los cambios al repositorio local, pero también dejándolos disponibles directamente para su modificación o revisión en el área de trabajo. Es importante mencionar que se utiliza cuando ya se tiene un repositorio local vinculado a uno remoto, al igual que con el comando git push.

● **_git clone_** , en el caso de necesitar "bajar" un repositorio remoto de algún proyecto ya existente se puede ejecutar este comando. Genera un directorio (con el nombre del repositorio o uno especificado explícitamente) que contiene todo lo propio al proyecto, además del subdirectorio .git necesario para poder gestionar los cambios y todo lo pertinente al repositorio Git.**
