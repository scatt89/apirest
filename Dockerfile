FROM ubuntu:14.04

MANTAINER Marrarichy Da Silva Garcia <dasilvagarciam@gmail.com>

#environment variables
ENV MYSQL_CONTAINER=db \
MYSQL_DATABASE=anuncios \
DLL-AUTO=create \
MYSQL-PORT=3306 \
JAVA_APP=app.jar

#repository update, java 7 and mysql client install
RUN apt-get update && \
apt-get install -y openjdk-7-jre-headless && \
apt-get install -y mysql-client

#add the jar app to the directory / of the cantainer
ADD ${JAVA_APP} /${JAVA_APP}

#execute the copy jar file with the environment variables like parameters
CMD ["java", "-jar", "${JAVA_APP}", "--spring.datasource.url=jdbc:mysql://${MYSQL_CONTAINER}:${MYSQL-PORT}/${MYSQL_DATABASE}", "--spring.jpa.hibernate.ddl-auto=${DLL-AUTO}"]

#expose the 8080 port of the container to the local host
EXPOSE 8080
