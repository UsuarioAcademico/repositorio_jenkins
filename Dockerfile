# Usando uma imagem estável do Tomcat 9 com Java 17 que corrige esse conflito de ciclo de vida
FROM tomcat:9.0.89-jdk17-temurin-jammy

# Remove as aplicações padrão do Tomcat para limpar o ambiente
RUN rm -rf /usr/local/tomcat/webapps/*

# Copia o arquivo .war diretamente para a pasta webapps renomeando para ROOT.war
# Ao renomear para ROOT.war, sua aplicação vira a principal do Tomcat e responde direto na raiz!
COPY target/myapp.war /usr/local/tomcat/webapps/ROOT.war

# Expõe a porta interna padrão do Tomcat
EXPOSE 8080

# Inicia o Tomcat de forma limpa
CMD ["catalina.sh", "run"]