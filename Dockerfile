# Use a lightweight JRE image
FROM eclipse-temurin:21-jre-jammy

WORKDIR /app

# Copy the JAR that was built in CodeBuild
# The asterisk (*) handles any version name (e.g., cicd-0.0.1.jar)
COPY target/*.jar app.jar

# Expose the application port
EXPOSE 8085

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
