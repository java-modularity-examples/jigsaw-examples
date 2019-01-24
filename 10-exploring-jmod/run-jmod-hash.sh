#!/bin/bash

rm -rf target/jmods && mkdir -p target/jmods

# You can create from JARs or straight from the modules
jmod create --class-path target/mods/org.astro \
  --module-version=1.0.0-SNAPSHOT target/jmods/org.astro@1.0.0-SNAPSHOT.jmod
jmod create --class-path target/mods/com.andretc83.another.module\
  target/jmods/com.andretc83.another.module.jmod 
jmod create --class-path target/mods/com.andretc83.greetings \
  --main-class com.andretc83.greetings.Main target/jmods/com.andretc83.greetings.jmod

jmod hash --hash-modules ".*" --module-path target/jmods target/jmods/org.astro@1.0.0-SNAPSHOT.jmod