module org.example {
    requires org.example.astro;
    requires org.example.vehicle;
    exports org.example;
    // exports org.example.astro; // It does not work! You should not be supposed to do that.
    // exports org.example.vehicle; // It does not work! You should not be supposed to do that.