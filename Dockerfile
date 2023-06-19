FROM tomcat:9

LABEL maintainer="jjjesss@gmail.com"

# install our app
ADD ./target/tomcat_webapp_demo.war /usr/local/tomcat/webapps/

# default port
EXPOSE 8080
CMD ["catalina.sh", "run"]
