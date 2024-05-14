FROM tomcat:8.0
EXPOSE 8090
COPY /var/lib/jenkins/workspace/cicd-1/webapp/target/webapp-${BUILD_NUMBER}.war /usr/local/tomcat/webapps/webapp.war
ENTRYPOINT ["java","-jar","webapp.war"]
