# Use the Java 25 Runtime (JRE) - lightweight, no compiler tools
FROM eclipse-temurin:25-jre

WORKDIR /app

# We expect the GitHub Action to place the downloaded jar here as 'read.jar'
COPY ./app /app

# Expose the port
EXPOSE 8080

# Run the jar, pointing to the config file which you must mount
CMD ["java", "-jar", "/app/read.jar", "--spring.config.location=/app/conf.yml"]