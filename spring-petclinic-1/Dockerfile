FROM tomcat:8
RUN mv webapps webapps2
RUN mv webapps.dist webapps
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
#edited for githook
