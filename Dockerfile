FROM node:22.5-alpine

WORKDIR /app


COPY package*.json  ./

# # RUN npm install
# RUN npm install

# RUN npm ci
RUN npm ci


COPY . .

# EXPOSE 9000


CMD [ "npm","start" ]