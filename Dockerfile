# Usa una imagen ligera de Nginx
FROM nginx:alpine

# Elimina el contenido por defecto del sitio
RUN rm -rf /usr/share/nginx/html/*

# Copia todos los archivos del sitio web al directorio web de Nginx
COPY . /usr/share/nginx/html

# Expone el puerto 80 (Nginx lo usa por defecto)
EXPOSE 80

# Mantiene el contenedor corriendo
CMD ["nginx", "-g", "daemon off;"]
