FROM mongo:latest

MAINTAINER Alistair Bugay

RUN apt-get update
RUN apt-get install -y
RUN apt install netcat-traditional netcat-openbsd -y

#COPY ./docker/mongo/mongo_scripts /mongo_scripts

# chmod details: http://www.computerhope.com/unix/uchmod.
# http://stackoverflow.com/questions/27281965/docker-file-chmod-on-entrypoint-script
#RUN chmod +rx /mongo_scripts/*.sh
#RUN mongod 
#RUN touch /.firstrun

VOLUME ["/data/db"]  
WORKDIR data/mongodb   

EXPOSE 27017

ENTRYPOINT ["/mongo_scripts/run.sh"]


#create a file named firstrun
#RUN touch /.firstrun
#EXPOSE 27018
#ENTRYPOINT ["/mongo_scripts/run.sh"]