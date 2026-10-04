FROM floryn90/hugo:ext-onbuild AS hugo

FROM nginx
COPY --from=hugo /target /usr/share/nginx/html
