FROM docker.io/redhat/ubi9:latest
RUN dnf install -y nodejs npm && dnf clean all
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .
EXPOSE 8003
CMD ["node", "server.js"]
