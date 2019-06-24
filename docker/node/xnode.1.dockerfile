FROM node:latest
MAINTAINER Hyoushke

ENV NODE_ENV=development
ENV PORT=9090

COPY npi /var/www/
WORKDIR /var/www/

RUN npm install
EXPOSE $PORT
ENTRYPOINT ["npm", "start"]
