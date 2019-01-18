#!/bin/bash

rm -rf target/jmods && mkdir -p target/jmods

# Here I am inverting JMOD generation to show how to hash the modules that
# depends on org.astro module
jmod create --class-path target/mods/com.andretc83.greetings \
--main-class com.andretc83.greetings.Main target/jmods/com.andretc83.greetings.jmod

jmod create --class-path target/mods/org.astro --module-version=1.0.0-SNAPSHOT \
 --hash-module com.andretc83.greetings --module-path target/jmods \
 target/jmods/org.astro@1.0.0-SNAPSHOT.jmod