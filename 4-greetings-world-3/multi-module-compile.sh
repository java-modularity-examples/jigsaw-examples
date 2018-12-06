#!/bin/bash

mkdir mods

javac -d mods --module-source-path src/main/java $(find src/main/java -name "*.java")