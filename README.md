# jigsaw-examples

Examples from http://openjdk.java.net/projects/jigsaw/quick-start, following Maven standards.

## Examples here:

1. 1-greetings: basic exaple on how to create a modular application, which does not follow the best practices on how to create a modular application,
2. 2-greetings-world-1: example with two modules, to show what happens if you do not follow the best practices,
3. 3-greetings-world-2: here I am trying to circumvent the best practices, merging two module-info.java, and failing miserably,
4. 4-greetings-world-3: the correct version of greetings-world, from the examples,
5. 5-greetings-world-4: deliberatedly provoked conflict between modules with the same name and how to circumvent the issue,
6. 6-nested-modules: nested modules layot tryout, showing its shortcomings as a project layout,
7. 7-alternative-to-nested-modules: an alternative for a nested modules project layout, which is easier to compile.

## Best practices

Suppose we have two modules with names 'my.first.module' and 'my.second.module'.
The folder structure for a modular project should be something like:

src/main/java
    - my.first.module
        - module-info.java
        - my/first/module/(all the packages and classes go here)
    - my.second.module
        - module-info.java
        - my/second/module/(all the packages and classes go here)
