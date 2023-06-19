FROM tomcat:9
LABEL maintainer="jjjesss@gmail.com"

ADD ./target/hello-world-devops.war /usr/local/tomcat/webapps/

EXPOSE 9080
CMD ["catalina.sh", "run"]
