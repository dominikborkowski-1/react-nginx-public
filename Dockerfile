FROM node:14-alpine as build

WORKDIR /app

COPY package*.json ./

RUN npm install --silent

COPY . .

RUN npm run build

FROM nginx:1.21.3-alpine

RUN rm -rf /usr/share/nginx/html/*

COPY --from=build /app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]