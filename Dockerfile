FROM ubuntu:letest
RUN winget install java-y
RUN Dockerfolder
WORKDIR Dockerfolder
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.78/bin/apache-tomcat-9.0.78.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.78.tar.gz 
RUN mv  apache-tomcat-9.0.78/* Dockerfolder
EXPOSE 8080
CMD ["Dockerfolder/bin/catalina.sh" ,"run"]
