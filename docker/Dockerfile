# Use official OpenJDK 11 runtime as base image
FROM openjdk:11-jre-slim

# Set working directory in container
WORKDIR /app

# Copy the JAR file from target directory
COPY target/calculator-1.0-SNAPSHOT.jar /app/calculator.jar

# Add metadata
LABEL maintainer="your-email@example.com"
LABEL description="Simple Calculator Application"
LABEL version="1.0"

# Expose port (if needed for future web interface)
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "calculator.jar"]
