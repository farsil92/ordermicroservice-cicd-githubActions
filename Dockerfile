# Use a lightweight OpenJDK image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory in the container
WORKDIR /app

# Copy the built JAR from target folder
COPY target/order-microservice-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app uses
EXPOSE 8083

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
