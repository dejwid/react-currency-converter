
FROM node:16-alpine 
WORKDIR /app
COPY . .
RUN npm ci 
RUN npm run build
EXPOSE 3000
# Start the app
CMD [ "npx", "serve", "build" ]