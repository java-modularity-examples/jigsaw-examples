#!/bin/bash

mkdir -p mods/org.astro mods/com.andretc83.greetings

# Compiling com.andretc83.first.greetings module
javac -d mods/com.andretc83.first.greetings src/main/java/com.andretc83.first.greetings/module-info.java \
src/main/java/com.andretc83.first.greetings/com/andretc83/greetings/Main.java

# Compiling org.astro module
javac -d mods/org.astro src/main/java/org.astro/module-info.java \
src/main/java/org.astro/org/astro/World.java

# Compiling com.andretc83.greetings module
javac --module-path mods -d mods/com.andretc83.greetings \
src/main/java/com.andretc83.greetings/module-info.java \
src/main/java/com.andretc83.greetings/com/andretc83/greetings/Main.java