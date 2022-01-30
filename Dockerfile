FROM ethereum/solc:0.4.24 as builder
# We use a solidity container to compile our contracts
# All our files are transfered to a single folder called "app"
run mkdir /app
COPY target/lightchain-container-*-jar-with-dependencies.jar /app
COPY src/main/liboqs-java/target/liboqs-java.jar /app
COPY src/main/resources/log4j.properties /app
COPY simulation.config /app
COPY contracts/*.sol /app/
COPY src/main/resources/liboqs-jni.so /app
#COPY src/main/resources/liboqs-jni.so /app
WORKDIR /app
# NOTE: I hard coded the filename here (eg. testcon.sol)
RUN  solc -o . --bin testcon.sol

# Here we use a java container for further simulation
FROM openjdk:8u242-jre
WORKDIR /app
# The files from above solidity container are copied into this current container
COPY --from=builder /app .
ADD src/main/liboqs-java/target/liboqs-java.jar .
ADD src/main/resources/liboqs-jni.so .
CMD ["export","LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/lib""]
ENV LD_LIBRARY_PATH /usr/local/lib
# NOTE: I hard coded the version here
# TODO: Make the filename below change dynamically with new versions
CMD ["java","-Djava.library.path=app/", "-cp", "lightchain-container-0.0.1-SNAPSHOT-jar-with-dependencies.jar", "simulation.SimulationDriver"]
