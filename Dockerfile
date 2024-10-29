FROM ubuntu:22.04

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el contenido de la carpeta src al contenedor
COPY src /app

# Actualizar los paquetes e instalar Python
RUN apt-get update && \
    apt-get install -y python3

# Exponer el puerto 8000
EXPOSE 8000

# Iniciar el servidor web de Python
CMD ["python3", "-m", "http.server", "8000"]
