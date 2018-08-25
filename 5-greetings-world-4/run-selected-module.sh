#!/bin/bash

if [ "$#" -ge 1 ]
then
    MODULE=$1
    echo "Running from module '${MODULE}'."
    java --module-path ${MODULE} -m com.andretc83.greetings/com.andretc83.greetings.Main
else
    echo "You should provide which module you want to load."
fi