# GIT 

## Principales comandos (NUMERO 18)

###### **Comandos Básicos**

Git se puede ver como un set de herramientas muy completo, pero para un manejo básico de repositorios en Git es necesario conocer por lo menos, los siguientes comandos:

●       git init es el comando para inicializar un directorio como repositorio Git, se ejecuta dentro del directorio del proyecto, y como resultado crea un subdirectorio .git que contiene todos los archivos para poder realizar el seguimiento de los cambios, etiquetas, etc.

●       git add <archivo> luego de la creación, modificación o eliminación de un archivo, los cambios quedan únicamente en el área de trabajo, por lo tanto es necesario pasarlos al área de preparación mediante el uso del comando git add , para que sea incluido dentro de la siguiente Confirmación ( cometer ).

●       git status es un comando que permite conocer en qué estado se encuentran los archivos

●       git commit, con este comando se confirman todos los cambios registrados en el área de preparación, o lo que es lo mismo, se pasan los cambios al repositorio local.

●       git push es el comando que se utiliza para enviar todas las confirmaciones registradas en el repositorio local a un repositorio remoto.

●       git pull funciona al inverso de git push, trayendo todos los cambios al repositorio local, pero también dejándolos disponibles directamente para su modificación o revisión en el área de trabajo. Es importante mencionar que se utiliza cuando ya se tiene un repositorio local vinculado a uno remoto, al igual que con el comando git push.

●       git clone , en el caso de necesitar "bajar" un repositorio remoto de algún proyecto ya existente se puede ejecutar este comando. Genera un directorio (con el nombre del repositorio o uno especificado explícitamente) que contiene todo lo propio al proyecto, además del subdirectorio .git necesario para poder gestionar los cambios y todo lo pertinente al repositorio Git.__
