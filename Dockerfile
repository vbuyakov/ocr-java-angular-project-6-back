FROM eclipse-temurin:21-jre AS runtime

WORKDIR /app

# Copy the built Spring Boot fat jar from the Gradle build output.
# We use a wildcard to avoid hardcoding the version.
COPY build/libs/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]

