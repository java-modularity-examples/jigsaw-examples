# jigsaw-examples

Examples from http://openjdk.java.net/projects/jigsaw/quick-start, following Maven standards.

## Examples here:

1. 1-greetings: basic exaple on how to create a modular application that supports one module per project. This does not follow the practices based on Oracle documentation on how to create a modular application,
2. 2-greetings-world-1: example with two modules, to show one way to create modules that it is hard to deal with dependencies between modules,
3. 3-greetings-world-2: here I am trying to put two modules declarations in one file (it does not work),
4. 4-greetings-world-3: one of my favorite versions of greetings-world, from the examples,
5. 5-greetings-world-4: deliberatedly provoked conflict between modules with the same name and how to circumvent the issue,
6. 6-nested-modules: nested modules layot tryout, showing its shortcomings as a project layout,
7. 7-alternative-to-nested-modules: an alternative for a nested modules project layout, which is easier to compile,
8. 8-packaging: example on how to package a modularized application.
9. 9-jmod-jlink: example on how to use *jmod* and *jlink* to run a modularized application. This example also adds a Dockerfile for an isolated test.
10. 10-exploring-jmod: further exploration on *jmod* command.

## My favorite way to organize a multi-module project and build it by hand

This is my favorite way to organize a multi-module project because it gives
less headaches when maintaining, compiling, and running the
modularized application.

Suppose we have two modules with names 'my.first.module' and 'my.second.module'.
The folder structure for a modular project should be something like:

* src/main/java

    * my.first.module

        * module-info.java
        * my/first/module/(all the packages and classes go here)

    * my.second.module

        * module-info.java
        * my/second/module/(all the packages and classes go here)
