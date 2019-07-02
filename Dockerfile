FROM ubuntu:16.04
RUN apt-get update
RUN apt-get -y install apache2
RUN echo "ibm training" > /var/www/html/index.html
RUN echo '. /etc/apache2/envvars' > /run.sh
RUN echo 'mkdir -p /var/run/apache2' >> /run.sh
RUN echo 'mkdir -p /var/lock/apache2' >> /run.sh
RUN echo '/usr/sbin/apache2 -D FOREGROUND' >> /run.sh

RUN chmod 755 /run.sh
EXPOSE 80
CMD /run.sh
