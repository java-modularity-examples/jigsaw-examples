# 9-jmod-jlink

Example that extends '8-packaging' with **jmod** and **jlink** tests.
I also added a Dockerfile to create a image that runs slim JDK and the compiled application.
Unfortunately, Alpine images are not working with OpenJDK 11, something to be investigated.