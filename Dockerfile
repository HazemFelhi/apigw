# Use an official OpenJDK 17 JDK as the base image
FROM docker.io/openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the build context to the container
COPY target/apigw-0.0.1-SNAPSHOT.jar /app/

# Expose the port your application listens on
EXPOSE 8080

# Run the application when the container starts
CMD ["java", "-jar", "api-gateway.jar"]