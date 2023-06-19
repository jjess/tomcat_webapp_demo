FROM tomcat:9
LABEL maintainer="jjjesss@gmail.com"

# run in a different port (9080)
RUN sed -i 's/port="8080"/port="9080"/' ${CATALINA_HOME}/conf/server.xml

# install our app
ADD ./target/hello-world-devops.war /usr/local/tomcat/webapps/

EXPOSE 9080
CMD ["catalina.sh", "run"]
