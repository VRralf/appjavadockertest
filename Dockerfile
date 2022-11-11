FROM gradle:7.5.1-jdk11
COPY . .
RUN gradle build
EXPOSE 8080
ENTRYPOINT ["java","-jar","build/libs/dockerExample-0.0.1-SNAPSHOT.jar"]