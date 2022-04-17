FROM amazoncorretto:11.0.14
EXPOSE 8080
ARG JAR_FILE=build/libs/app.jar
ADD ${JAR_FILE} ${JAR_FILE}

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","${JAR_FILE}"]