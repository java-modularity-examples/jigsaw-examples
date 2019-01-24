# 10-exploring-jmod

Example uses 9-jmod-jlink to explore more **jmod** features. *describe-jmod.sh*
get the data from module-info.java and the modules hashed when creating
JMOD files.

Please, you should read *run-jmod.sh*. The JMOD generations are inverted,
to show how to add hash of **com.andretc83.greetings** into **org.astro**.

## How to run this demo

You must execute the following commands in the same order:

```{bash}
./clean.sh
./multi-module-compile.sh
./pack-to-jar.sh
./run-jmod.sh

# Let's not forget to run describe-jmod.sh
./describe-jmod.sh

./run-jlink <Path of the target JVM to distribute>

# If you want to generate a Docker image (to be sure that it works)
docker build -t <set an image name> .
docker run -d --name <name of the container> <name of the image>
```

## Exploring 'jmod hash'

To be sure that jmod hash hashes a module that is dependent on the module you
want to add that hash, you can run the commands:

```{bash}
./clean.sh
./multi-module-compile.sh
./run-jmod-hash.sh
```

After that, try to describe the module:

```{bash}
jmod describe target/jmods/org.astro@1.0.0-SNAPSHOT.jmod
```

You should see only hash for **com.andretc83.greetings** module.