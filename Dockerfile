FROM tomcat:8.0
EXPOSE 8090
//COPY webapp/target/webapp-${BUILD_NUMBER}.war /usr/local/tomcat/webapps/webapp.war
COPY maven-test/webapp-${BUILD_NUMBER}.war /usr/local/tomcat/webapps/webapp.war
ENTRYPOINT ["java","-jar","webapp.war"]
