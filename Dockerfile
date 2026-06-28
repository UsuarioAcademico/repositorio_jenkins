FROM tomcat:9.0-jdk17-openjdk-slim

RUN rm -rf /usr/local/tomcat/webapps/*

RUN mkdir /usr/local/tomcat/webapps/webapp
COPY target/myapp.war /tmp/myapp.war
RUN apt-get update && apt-get install -y unzip && \
    unzip /tmp/myapp.war -d /usr/local/tomcat/webapps/webapp/ && \
    rm /tmp/myapp.war && \
    apt-get remove -y unzip && apt-get autoremove -y && rm -rf /var/lib/apt/lists/*

EXPOSE 8080

CMD ["catalina.sh", "run"]