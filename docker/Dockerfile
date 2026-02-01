# Stage 1: Build using Maven and Eclipse Temurin (The modern Java)
FROM maven:3.9-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

# Stage 2: Run using a lightweight Java Runtime
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/target/Calculator-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]