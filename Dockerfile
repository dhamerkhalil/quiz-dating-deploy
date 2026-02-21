# Use eclipse-temurin for a lightweight JRE
FROM eclipse-temurin:17-jre-alpine

# Use a volume for temporary files
VOLUME /tmp

# The directory where the app will live
WORKDIR /app

# Copy the JAR from the target directory into the container
# This assumes you have already run 'mvn clean package'
COPY people-matching-backend-1.0-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

# Expose the default port
EXPOSE 8080
