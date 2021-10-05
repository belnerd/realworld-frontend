FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Env variables, use IP instead of localhost if you want to access from another computer on the same network (ie. VB Linux <-> Windows)
# ENV REACT_APP_API_ROOT=http://localhost:8080/api

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

EXPOSE 4100
CMD [ "npm", "start"]
