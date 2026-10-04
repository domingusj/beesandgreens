FROM ghcr.io/gohugoio/hugo AS hugo
USER root
WORKDIR /src
COPY . .
RUN hugo build --minify --gc

FROM nginx
COPY --from=hugo /src/public /usr/share/nginx/html
