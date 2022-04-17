FROM amazoncorretto:11.0.14
EXPOSE 8080

ADD build/libs/*.jar /app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]