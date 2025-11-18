#Partimos de la imagen de ubuntu ubicada en el repositorio de docker hub, en este caso la ultima version. Hay que tener cuidado porque cuando cambia la ultima version, nuestro programa puede dejar de funcionar por alguna pequena modificacion
FROM ubuntu:latest

#El primero de los comandos actualiza las dependencias y el segundo (si funciona el primero) instala el nginx que es un servicio para ejecutar paginas web
RUN apt-get update && apt-get install nginx -y 

#Aclaramos en que puerto escucha nuestro contenedor
EXPOSE 80

#Copiamos la informacion de nuestra web al directorio que tiene por default el servicio de nginx
COPY index.html /var/www/html/index.html

#Arranca nginx dentro del contenedor, y como por default nginx inicia en segundo plano, le indicamos que lo ejecute en primer plano, para que el contenedor no se apague.
CMD ["nginx", "-g", "daemon off;"]


