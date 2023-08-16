# Use an official Java runtime image as a base image
FROM openjdk:11-jre-slim

# Copy the compiled Spring Boot JAR file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot application is listening on
EXPOSE 8080

# Command to run your application
ENTRYPOINT ["java", "-jar", "app.jar"] 