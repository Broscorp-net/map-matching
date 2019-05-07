FROM openjdk:8-jre-alpine
RUN mkdir app
WORKDIR /app
COPY graph-cache ./graph-cache
COPY config.yml .
COPY "matching-web/target/graphhopper-map-matching-web-0.13-SNAPSHOT.jar" .
CMD ["/usr/bin/java", "-jar", "graphhopper-map-matching-web-0.13-SNAPSHOT.jar", "server","config.yml"]
EXPOSE 8989