FROM node:alpine as teamalpha
WORKDIR /var/app
COPY package.json .
RUN npm install

FROM nginx
EXPOSE 80
COPY --FROM=teamalpha /var/app/build /usr/share/nginx/html
