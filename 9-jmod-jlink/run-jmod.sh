#!/bin/bash

rm -rf target/jmods && mkdir -p target/jmods

jmod create --class-path target/org.astro@1.0.0-SNAPSHOT.jar target/jmods/org.astro@1.0.0-SNAPSHOT.jmod
jmod create --class-path target/com.andretc83.greetings.jar target/jmods/com.andretc83.greetings.jmod