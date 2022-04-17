FROM amazoncorretto:11.0.14
EXPOSE 8080
ARG JAR_PATH=build/libs/
ARG JAR_FILE=app.jar
ADD ${JAR_PATH}${JAR_FILE} /${JAR_FILE}

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]