# Use a base Java image
FROM openjdk:13-alpine


# Expose default Lavalink port
EXPOSE 2333

# Copy your application.yml configuration file into the Docker image
COPY application.yml /lavalink

# Start up Lavalink
CMD ["java", "-jar", "Lavalink.jar"]