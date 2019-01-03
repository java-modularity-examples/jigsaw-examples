#!/bin/bash

if [ "$#" -ge 1 ]
then
    rm -rf target/dist

    jlink --module-path $1/jmods/:target/jmods \
--add-modules org.astro,com.andretc83.greetings \
--launcher runapp=com.andretc83.greetings --no-header-files --no-man-pages \
--strip-debug --output target/dist
fi