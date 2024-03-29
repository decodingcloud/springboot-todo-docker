# Use AdoptOpenJDK as base image
#FROM adoptopenjdk/openjdk17:alpine-jre
FROM amazoncorretto:17.0.7-alpine

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/TODO-0.0.1-SNAPSHOT.jar /app/TODO-0.0.1-SNAPSHOT.jar

# Expose the port that your application runs on
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "TODO-0.0.1-SNAPSHOT.jar"]