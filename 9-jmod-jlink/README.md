# 9-jmod-jlink

Example that extends '8-packaging' with **jmod** and **jlink** tests.
Here I am using **jlink** with a target JVM to be the one that will be shrinked and distributed.
I also added a Dockerfile to create a image that runs slim JDK and the compiled application.

## How to run this demo

You must execute the following commands in the same order:

```{bash}
./clean.sh
./multi-module-compile.sh
./pack-to-jar.sh
./run-jmod.sh
./run-jlink <Path of the target JVM to distribute>

# If you want to generate a Docker image (to be sure that it works)
docker build -t <set an image name> .
docker run -d --name <name of the container> <name of the image>
```