# Use a base Java image
FROM openjdk:13-alpine

# Create a directory for Lavalink
WORKDIR /lavalink

# Download Lavalink.jar from the official source
ADD https://github.com/Frederikam/Lavalink/releases/download/3.3.2.3/Lavalink.jar /lavalink

# Expose default Lavalink port
EXPOSE 2333

# Copy your application.yml configuration file into the Docker image
COPY application.yml /lavalink

# Start up Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
