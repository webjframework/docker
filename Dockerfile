FROM tomcat:8.0.30-jre8


RUN apt-get update && \ 
 apt-get install -y --no-install-recommends inotify-tools git  
 
COPY *.ini /usr/local/tomcat/webapps/

COPY startup /usr/local/tomcat

RUN chmod a+x  /usr/local/tomcat/startup
CMD  /usr/local/tomcat/startup
