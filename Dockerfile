FROM tomcat:8.0
EXPOSE 8090
ARG WAR_FILE=./target/*.war
COPY ${WAR_FILE} /usr/local/tomcat/webapps/webapp.war
ENTRYPOINT ["java","-jar","webapp.war"]
