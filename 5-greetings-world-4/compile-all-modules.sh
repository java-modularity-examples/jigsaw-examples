#!/bin/bash

mkdir mods1 mods2

# Compiling com.andretc83.first.greetings module
javac -d mods1/com.andretc83.first.greetings src/main/java/com.andretc83.first.greetings/module-info.java \
src/main/java/com.andretc83.first.greetings/com/andretc83/greetings/Main.java

# What happens if you uncomment this line below and comment the 'javac' command above?
# javac -d mods1 --module-source-path src/main/java $(find src/main/java -name "*.java" | grep "com.andretc83.first.greetings")

javac -d mods2 --module-source-path src/main/java $(find src/main/java -name "*.java" | grep -v "com.andretc83.first.greetings")