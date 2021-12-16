FROM openjdk:8-jre-alpine
RUN mkdir app
WORKDIR /app
COPY target/cluster-sharding-kubernetes-1.0-SNAPSHOT-allinone.jar /app/cluster-sharding-kubernetes.jar
RUN  chmod +x /app/cluster-sharding-kubernetes.jar
EXPOSE 8080
EXPOSE 8558
EXPOSE 2552
CMD ["java","-jar", "cluster-sharding-kubernetes.jar"]