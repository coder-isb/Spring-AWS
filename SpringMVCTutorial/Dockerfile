FROM ubuntu:latest
MAINTAINER indrajet.it.in@gmail.com
RUN apt-get update && \
apt-get install -y openjdk-8-jdk
RUN apt-get install -y wget
RUN cd $HOME && \ 
mkdir servers && \ 
cd servers && \ 
wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz && \
gunzip apache-tomcat-8.0.53.tar.gz && \
tar -xvf apache-tomcat-8.0.53.tar && \
mv apache-tomcat-8.0.53 tomcat && \
mv tomcat /opt
COPY target/SpringMVCTutorial.war /opt/tomcat/webapps/
CMD /opt/tomcat/catalina.sh run