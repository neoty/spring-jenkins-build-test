FROM amazoncorretto:11.0.14
EXPOSE 8080
ARG JAR_PATH=build/libs/
ARG JAR_NAME=app.jar
ADD ${JAR_FILE}${JAR_FILE} /${JAR_NAME}

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/${JAR_NAME}"]