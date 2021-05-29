FROM nginx:latest

LABEL Rakhesh Sasidharan <me@rakhesh.com>
LABEL org.opencontainers.image.source=https://github.com/rakheshster/docker-nginxvars

COPY ./launcher.sh /
RUN chmod +x /launcher.sh
COPY ./default.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT [ "/launcher.sh" ] 