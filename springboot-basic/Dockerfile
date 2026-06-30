FROM eclipse-temurin:21-jre

# Create the workdir
WORKDIR /app

# Copy the compiled JAR
COPY app.jar app.jar

# Expose standart port for springboot
EXPOSE 8080

# non-root user
RUN useradd -r -u 1001 spring
USER 1001

# exec the app
ENTRYPOINT ["java", "-jar", "app.jar"]