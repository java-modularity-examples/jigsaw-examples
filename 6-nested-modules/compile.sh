#!/bin/bash

mkdir -p mods/org.example.astro mods/org.example.vehicle

# Compiling org.exaple.astro module
javac -d mods/org.example.astro src/main/java/org.example/astro/module-info.java \
src/main/java/org.example/astro/org/example/astro/World.java

# Compiling org.astro.vehicle module
javac -d mods/org.example.vehicle src/main/java/org.example/vehicle/module-info.java \
src/main/java/org.example/vehicle/org/example/vehicle/Car.java

# Compiling org.example module
javac --module-path mods -d mods/org.example \
src/main/java/org.example/module-info.java \
src/main/java/org.example/org/example/GreetingSelector.java

# Compiling com.andretc83.greetings module
javac --module-path mods -d mods/com.andretc83.greetings \
src/main/java/com.andretc83.greetings/module-info.java \
src/main/java/com.andretc83.greetings/com/andretc83/greetings/Main.java