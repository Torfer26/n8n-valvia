FROM n8nio/n8n:latest

# Ejecutar como usuario n8n (normalmente "node")
USER node
WORKDIR /home/node

# Crear package.json mínimo e instalar xlsx
RUN npm init -y && npm install xlsx

# Volvemos a root para que la imagen conserve el entrypoint original de n8n
USER root
