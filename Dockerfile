FROM tomcat:9
LABEL maintainer="jjjesss@gmail.com"

# run in a different port (9080)
#RUN sed -i 's/port="8080"/port="9080"/' ${CATALINA_HOME}/conf/server.xml

# install our app
ADD ./target/tomcat_webapp_demo.war /usr/local/tomcat/webapps/

#EXPOSE 9080
EXPOSE 8080
CMD ["catalina.sh", "run"]
