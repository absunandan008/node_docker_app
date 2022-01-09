###FROM node:16
# Create app directory
###WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
###COPY package*.json ./

###RUN npm install
# If you are building your code for production
# RUN npm ci --only=production
# Bundle app source
###COPY . .

###EXPOSE 8080
###CMD [ "node", "server.js" ]

FROM node:16 as build

WORKDIR /app
COPY package.json server.js ./
RUN npm install

##FROM node:16
##FROM gcr.io/distroless/nodejs
FROM node:16-alpine

COPY --from=build /app /
EXPOSE 3001
CMD ["server.js"]
