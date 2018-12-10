# 9-jmod-jlink

Example that extends '8-packaging' with **jmod** and **jlink** tests.
I also added a Dockerfile to create a image that runs slim JDK and the compiled application.
Unfortunately, Alpine images are not working with OpenJDK 11, something to be investigated.

## How to run this demo

You must execute the following commands in the same order:

```{bash}
./clean.sh
./multi-module-compile.sh
./pack-to-jar.sh
./run-jmod.sh
./run-jlink $JAVA_HOME (please have your JAVA_HOME set)
docker build -t <set an image name> .
docker run -d --name <name of the container> <name of the image>
```