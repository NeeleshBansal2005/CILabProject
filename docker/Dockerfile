# Stage 1: Build the application
# We use a Docker image that already has Maven installed
FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
# Run the maven build inside the container
RUN mvn clean package

# Stage 2: Create the final image
# We copy only the JAR file from the previous stage to keep it small
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/Calculator-1.0-SNAPSHOT.jar app.jar
EXPOSE 8080
# Command to run the app
ENTRYPOINT ["java", "-jar", "app.jar"]