FROM tomcat:9.0.27-jdk8-openjdk
RUN chmod -R 777 $CATALINA_HOME/webapps 
ENV CATALINA_HOME /usr/local/tomcat
COPY webapp/target/webapp.war $CATALINA_HOME/webapps
EXPOSE 8080
CMD ["catalina.sh","run"]
