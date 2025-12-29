# Image Node.js légère
FROM node:20-slim

# Dossier de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install --production

# Copier le reste du projet
COPY . .

# Render utilise le port fourni par l'environnement
EXPOSE 8000

# Démarrer l'application
CMD ["npm", "start"]
