FROM ghcr.io/gohugoio/hugo AS hugo
USER root
COPY . .
RUN hugo build --minify --gc

FROM nginx
COPY --from=hugo /project/public /usr/share/nginx/html
