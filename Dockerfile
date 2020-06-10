FROM java:8

VOLUME /tmp

ADD /target/microservice-config-server-0.0.1-SNAPSHOT.jar microservice-config-server-0.0.1-SNAPSHOT.jar
RUN bash -c 'touch /microservice-config-server-0.0.1-SNAPSHOT.jar'

EXPOSE 8077

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/microservice-config-server-0.0.1-SNAPSHOT.jar"]