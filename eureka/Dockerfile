FROM cargo.caicloudprivatetest.com/biosan-library-base/maven:3.5.2-jdk-8-alpine

RUN mkdir /cloud-eureka

ADD target/cloud-eureka-1.2.2.jar /cloud-eureka

EXPOSE 8761

CMD java -jar /cloud-eureka/cloud-eureka-1.2.2.jar
