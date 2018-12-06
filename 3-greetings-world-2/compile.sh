#!/bin/bash

mkdir -p mods/org.astro mods/com.andretc83.greetings

javac -d mods/org.astro src/main/java/module-info.java src/main/java/org/astro/World.java
javac --module-path mods -d mods/com.andretc83.greetings src/main/java/module-info.java src/main/java/com/andretc83/greetings/Main.java