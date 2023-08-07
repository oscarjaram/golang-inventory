# Base de Datos: mariadb
# Deploy: docker

# Bajar imagen de mariadb
docker pull mariadb:10.7.4

# Mostrar imagenes de docker
docker images

# Crear contenedor de mariadb
docker run -d --name mariadb -p 3306:3306 -e MYSQL_ROOT_PASSWORD=rootroot mariadb:10.7.4
# -d : Correr en segundo plano
# --name : Nombre del contenedor
# -p : Puerto de la maquina host : Puerto del contenedor
# -e : Variables de entorno
# MYSQL_ROOT_PASSWORD : Contraseña del usuario root
# mariadb:10.7.4 : Imagen de mariadb

# Ver logs del contenedor
docker logs mariadb

# Ver contenedores corriendo
docker ps

# Detener contenedor
docker stop mariadb