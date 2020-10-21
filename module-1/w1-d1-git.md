# Terminology
- `repository` | `repo` : storage location for software packages
- `Tracked` : fichero que git está controlando
- `Untracked` : fichero que git NO está controlando
- `commit` : punto en la linea temporal
- `branch` : separación en la linea temporal
- `merge` : Traer cambios de una rama a la rama donde estoy
- `pull request` : pedido que se hace al repo original de mi fork de hacer merge de mis cambios.
- `pull` : traer cambios
- `push` : enviar cambios

## Basic Commands
- `git init` : convierte una carpeta normal en un repositorio
- `git status` : como está nuestro repo
- `git add <file>` : convierte el fichero \<file\> de untracked a tracked, dice a git que controle el fichero
- `git commit -m "<message>"`: crea un commit (un punto en la linea temporal)
- `git log` : enseña todos los commits de esa rama
- `git checkout <branch>` : cambia a la rama <branch>
- `git checkout -b <branch>` : crea nueva rama
- `git merge <branch>` : trae cambios de <branch> a la rama donde estoy
- `git pull <remote> <branch>` : trae cambios de remote/branch a la rama donde estoy
- `git push <remote> <branch>` : envia cambios a remote/branch desde la rama donde estoy

