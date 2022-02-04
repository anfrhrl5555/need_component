FROM 10.20.200.80:5000/tomcat:8.5.61-jre8
COPY index.jsp /usr/local/tomcat/webapps/ROOT/
COPY mysql-connector-java-8.0.24.jar /usr/local/tomcat/lib
WORKDIR /usr/local/tomcat/bin
RUN ./shutdown.sh && ./startup.sh
EXPOSE 8080
