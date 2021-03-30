Docker Kafka Zookeeper Actuator ![Build Status](https://travis-ci.org/apozo-copyright/docker-kafka-zookeeper-actuator.svg?branch=master)
================================
Docker image for Kafka message broker including Zookeeper and Spring Boot actuator

Build
-----
```
$ docker build . -t kafka-zookeeper-actuator
[...]
Successfully built ...
```

Run container
-------------
```
docker run -p 2181:2181 -p 8080:8080 -p 9092:9092 -e ADVERTISED_HOST=localhost kafka-zookeeper-actuator
```

Test
----
Run Kafka console consumer
```
kafka-console-consumer --bootstrap-server localhost:9092 --topic test
```

Run Kafka console producer
```
kafka-console-producer --broker-list localhost:9092 --topic test
test1
test2
test3
```

Verify that messages have been received in console consumer
```
test1
test2
test3
```

Verify the actuator is working
```
curl http://localhost:8080/actuator/health
{"status":"UP","components":{"kafka":{"status":"UP","details":{"requiredNodes":1,"clusterId":"rsjRotl4S0CAtcyy6nNjIQ","brokerId":"0","nodes":1}}, ... }}
```

Get from Dockerhub
------------------
https://hub.docker.com/r/apozocopyright/kafka-zookeeper-actuator

Credits
-------
Originally cloned and inspired by https://github.com/hey-johnnypark/docker-kafka-zookeeper
