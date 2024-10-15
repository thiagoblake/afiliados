# Usar uma imagem Node.js oficial
FROM node:18

# Criar o diretório de trabalho
WORKDIR /app

# Copiar os arquivos de configuração e dependências
COPY package*.json ./

# Instalar as dependências
RUN npm install

# Copiar o restante dos arquivos da aplicação
COPY . .

# Expor a porta que a aplicação usa
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["node", "app.js"]
