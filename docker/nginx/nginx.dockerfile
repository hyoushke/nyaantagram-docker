FROM nginx:latest
MAINTAINER Alistair Bugay


COPY npi /var/www/
WORKDIR /var/www/



EXPOSE 80 443

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
