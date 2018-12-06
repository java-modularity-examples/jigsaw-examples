#!/bin/bash

PROJECT_VERSION=1.0.0-SNAPSHOT

jar --create --file=target/org.astro@${PROJECT_VERSION}.jar \
--module-version=${PROJECT_VERSION} -C target/mods/org.astro .

jar --create --file=target/com.andretc83.greetings.jar \
 --manifest=GreetingsManifest.txt --main-class=com.andretc83.greetings.Main \
 -C target/mods/com.andretc83.greetings .