FROM ubuntu
ARG DEBAIN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get install apache2 apache2-utils -y#Define default port
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/apache2ctl" ]#Define default command
CMD [ "-D", "FOREGROUND" ]
