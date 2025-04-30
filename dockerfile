# Utiliza a imagem oficial do Node.js
FROM node:16-alpine

# Cria e define o diretório de trabalho
WORKDIR /app

# Copia o arquivo do servidor Node.js (app.js) para o diretório de trabalho
COPY app.js .

# Instala o Express no projeto
RUN npm init -y && npm install express

# Expõe a porta 3000, onde o servidor Node.js vai rodar
EXPOSE 3000

# Inicia o servidor Node.js
CMD ["node", "app.js"]
