FROM openjdk:11-jre-slim

LABEL maintainer="avthart@gmail.com"

VOLUME /tmp

EXPOSE 8080

ARG JAR_FILE=target/spring-boot-prometheus-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} spring-boot-prometheus.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-boot-prometheus.jar"]