# Kafka and Zookeeper and Spring Boot Actuator
FROM johnnypark/kafka-zookeeper:latest

RUN wget -q https://repo.spring.io/release/org/springframework/boot/spring-boot-cli/2.4.4/spring-boot-cli-2.4.4-bin.tar.gz -O /tmp/spring-boot-cli-2.4.4-bin.tar.gz \
 && tar xfz /tmp/spring-boot-cli-2.4.4-bin.tar.gz -C /root \
 && rm /tmp/spring-boot-cli-2.4.4-bin.tar.gz
COPY assets/actuator/ /root/
COPY assets/supervisor/ /etc/supervisor.d/

ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk

EXPOSE 2181 9092 8080
