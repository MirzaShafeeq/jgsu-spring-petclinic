FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]
#CMD sudo java -jar target/spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar
# tell docker what port to expose
