#!/bin/bash

mkdir -p target/mods/org.astro target/mods/com.andretc83.greetings

# Compiling org.astro module
javac -d target/mods/org.astro src/main/java/org.astro/module-info.java \
src/main/java/org.astro/org/astro/World.java

# Compiling com.andretc83.greetings module
javac --module-path target/mods -d target/mods/com.andretc83.greetings \
src/main/java/com.andretc83.greetings/module-info.java \
src/main/java/com.andretc83.greetings/com/andretc83/greetings/Main.java