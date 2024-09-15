# Usa a imagem Node.js como base
FROM node:20

# Define o diretório de trabalho na imagem
WORKDIR /app

# Copia o package.json e o package-lock.json
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o código da aplicação para o diretório de trabalho
COPY . .

# Expõe a porta na qual a aplicação estará rodando
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["npm", "start"]
