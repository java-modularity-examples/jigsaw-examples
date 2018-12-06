#!/bin/bash

mkdir -p target/mods

javac -d target/mods --module-source-path src/main/java $(find src/main/java -name "*.java")