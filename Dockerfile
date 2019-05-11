FROM openjdk:8-jdk-slim

MAINTAINER Manish More <manish.more64@gmail.com>

ADD target/*.jar /opt/my-app-1.0-SNAPSHOT.jar

WORKDIR /opt

ENTRYPOINT ["java", "-jar", "/my-app-1.0-SNAPSHOT.jar"]

EXPOSE 2222
