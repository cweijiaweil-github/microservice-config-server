FROM openjdk:8u191-jre-alpine3.9

VOLUME /tmp

ADD /target/microservice-config-server-0.0.1-SNAPSHOT.jar microservice-config-server-0.0.1-SNAPSHOT.jar


EXPOSE 8077

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/microservice-config-server-0.0.1-SNAPSHOT.jar"]