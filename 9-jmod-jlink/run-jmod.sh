#!/bin/bash

rm -rf target/jmods && mkdir -p target/jmods

# You can create from JARs or straight from the modules
jmod create --class-path target/mods/org.astro --module-version=1.0.0-SNAPSHOT target/jmods/org.astro@1.0.0-SNAPSHOT.jmod
jmod create --class-path target/mods/com.andretc83.greetings --main-class com.andretc83.greetings.Main target/jmods/com.andretc83.greetings.jmod

# jmod create --class-path target/org.astro@1.0.0-SNAPSHOT.jar target/jmods/org.astro@1.0.0-SNAPSHOT.jmod
# jmod create --class-path target/com.andretc83.greetings.jar target/jmods/com.andretc83.greetings.jmod