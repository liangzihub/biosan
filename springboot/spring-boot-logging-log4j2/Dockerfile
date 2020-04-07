FROM cargo.caicloudprivatetest.com/biosan-library-base/maven:3.5.2-jdk-8-alpine
RUN mkdir /springbootlog4j
ADD target/spring-boot-logging-log4j*.jar /springbootlog4j
EXPOSE 8080
WORKDIR /springbootlog4j
CMD java -jar spring-boot-logging-log4j*.jar

