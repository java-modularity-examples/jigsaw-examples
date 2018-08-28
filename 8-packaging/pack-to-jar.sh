#!/bin/bash

PROJECT_VERSION=1.0

jar --create --file=target/org.astro@${PROJECT_VERSION}.jar \
--module-version=${PROJECT_VERSION} -C target/mods/org.astro .

jar --create --file=target/com.andretc83.greetings.jar \
--main-class=com.andretc83.greetings.Main \
-C target/mods/com.andretc83.greetings .