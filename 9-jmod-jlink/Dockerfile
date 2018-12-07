FROM ubuntu:18.04

LABEL maintainer="Andre Tadeu de Carvalho <andre.tadeu.de.carvalho@gmail.com>"

WORKDIR /app

COPY target/org.astro@1.0.0-SNAPSHOT.jar .
COPY target/com.andretc83.greetings.jar .
COPY target/dist/ ./

ENTRYPOINT ["/app/bin/java", "-jar", "/app/com.andretc83.greetings.jar"]
