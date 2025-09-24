# Imagen base oficial
FROM node:22-alpine

# Crear directorio de la app
WORKDIR /app

# Copiar dependencias primero
COPY package*.json ./

# Instalar dependencias
RUN npm install --omit=dev

# Copiar el resto del código
COPY . .

# Exponer el puerto
EXPOSE 3000

# Comando final
CMD ["npm", "start"]


# Levantar contenedor desde la terminal

# CONSTRUIR LA IMAGEN DE DOCKER
# docker image build --tag nodeapp:latest .

# docker images

# EJECUTAR EL CONTENEDOR EN SEGUNDO PLANO
# docker run -d -p 3001:3000 --name app-node my-node-app:latest
# si deseamos borrar el contenedor --> docker rm -fv app-node