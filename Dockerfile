FROM tomcat:latest

COPY myapp/myapp-presentation/target/myapp-presentation-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
