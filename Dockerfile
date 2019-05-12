FROM openjdk:8-jdk-alpine

MAINTAINER Manish More <manish.more64@gmail.com>

VOLUME /tmp

ADD target/*.jar /opt/my-app-1.0-SNAPSHOT.jar

WORKDIR /opt

ENTRYPOINT ["java", "-jar", "/my-app-1.0-SNAPSHOT.jar"]

EXPOSE 2222
