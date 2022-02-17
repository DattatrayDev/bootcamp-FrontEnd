FROM node:16 as build-stage

RUN mkdir /app

COPY . /app/

WORKDIR /app

RUN npm install

RUN npm run build

FROM nginx

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY --from=build-stage /app/build .

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY --from=build-stage /app/build .

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]