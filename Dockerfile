FROM arm64v8/adoptopenjdk:11-jre

EXPOSE 8080

ADD build/libs/*.jar /app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

