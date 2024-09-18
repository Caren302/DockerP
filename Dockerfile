# Descargar la imagen de ubuntu 
FROM php:8.1-cli

# Actualizar la lista de actualizaciones  
RUN apt-get update

# Actualizar la imagen 
RUN apt-get upgrade -y

# Copiar la carpeta webapp
COPY ./app /home/app

# Establecer el directorio de trabajo
WORKDIR /home/app

# Abrir el puerto 8080
EXPOSE 8080 

# Ejecutar la aplicacion web
CMD [ "php", "-S", "0.0.0.0:8080", "-t", "/home/app" ]