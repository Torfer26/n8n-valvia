FROM n8nio/n8n:latest

# Instalamos xlsx en /data, que es donde n8n busca módulos externos
USER root
RUN mkdir -p /data \
    && cd /data \
    && npm init -y \
    && npm install xlsx

# Volvemos a usuario node (como la imagen oficial)
USER node
