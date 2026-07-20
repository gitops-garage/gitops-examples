FROM docker.io/library/eclipse-temurin:21-jre

# Create the workdir
WORKDIR /app

# Copy the compiled JAR
COPY target/springboot-basic-0.1.0.jar springboot-basic-0.1.0.jar

# Expose standart port for springboot
EXPOSE 8080

# non-root user
RUN useradd -r -u 1001 spring
USER 1001

# exec the app
ENTRYPOINT ["java", "-jar", "springboot-basic-0.1.0.jar"]