# Base image
FROM node:18-alpine

# Establecer directorio de trabajo
WORKDIR /app

# Crear el proyecto Next.js dentro del contenedor
RUN npx create-next-app@latest . \
    --typescript \
    --tailwind \
    --eslint \
    --no-git \
    --app \
    --src-dir \
    --import-alias "@/*" \
    --no-experimental-app \
    --yes

# Exponer puerto
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["npm", "run", "dev"]
