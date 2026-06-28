# Baixa o tomcat 9 com o java 17
FROM tomcat:9.0-jdk17-openjdk-slim

# Limpa a pasta padrao de apps do Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia o arquivo war gerado para dentro do Tomcat
COPY target/myapp.war /usr/local/tomcat/webapps/webapp.war

# Expoe a porta interna do container
EXPOSE 8080

# Comando para iniciar o Tomcat
CMD ["catalina.sh", "run"]