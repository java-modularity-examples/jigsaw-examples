# 5-greetings-world-4

In this example, I want to show you why it is a terrible idea to have two modules with the same name in your project.

Running **clean.sh** and **compile.sh**, you will have no trouble, as it shows:

```{bash}
$ ./clean.sh
$ ./compile.sh
```

> src\main\java\com.andretc83.first.greetings\module-info.java:1: warning: [module] module name component andretc83 should avoid terminal digits
> module com.andretc83.greetings { }
>           ^
> 1 warning
> src\main\java\com.andretc83.greetings\module-info.java:1: warning: [module] module name component andretc83 should avoid terminal digits
> module com.andretc83.greetings {
>           ^
> 1 warning

However, when you run the application:

```{bash}
$ ./run.sh
```

> Error occurred during initialization of boot layer
> java.lang.module.FindException: Two versions of module com.andretc83.greetings found in mods (com.andretc83.greetings and com.andretc83.first.greetings)

To solve this issue, it is better to have multiple modules for separated applications, so I created **clean-all-modules.sh**, **compile-all-modules.sh**,
and **run-selected-modules.sh**. There are still one detail to cover. What happens if I try to use *--module-source-path* with a module whose folder is
named differently? Testing it with the command:

```{bash}
javac -d mods1 --module-source-path src/main/java $(find src/main/java -name "*.java" | grep "com.andretc83.first.greetings")
```

We get the following result:

> src\main\java\com.andretc83.first.greetings\module-info.java:1: error: module name com.andretc83.greetings does not match expected name com.andretc83.first.greetings
> module com.andretc83.greetings { }
>                     ^
> src\main\java\com.andretc83.first.greetings\module-info.java:1: error: module name com.andretc83.greetings does not match expected name com.andretc83.first.greetings
> module com.andretc83.greetings { }
> ^
> error: cannot access module-info
>   cannot resolve modules
> 3 errors