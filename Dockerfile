FROM openjdk:23-oracle
ARG JAR_FILE=target/simple-docker-app-0.0.1-SNAPSHOT.jar
WORKDIR /opt/app
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]