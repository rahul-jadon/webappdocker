FROM tomcat:8.0-jre8
 
COPY target/*.war $CATALINA_HOME/webapps

LABEL maintainer=�rahul�

ADD target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD /usr/local/tomcat/bin/catalina.sh run