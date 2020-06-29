# Start with a base image containing Java runtime
FROM adoptopenjdk/openjdk11
# Create work folder
RUN mkdir /work

# Make port 8102 available to the world outside this container
EXPOSE 8102

# Copying the application's jar file inside the container
COPY target/pact-contract-provider-3.0.0-SNAPSHOT.jar /work/app.jar

# Run the jar file 
CMD java -jar /work/app.jar 