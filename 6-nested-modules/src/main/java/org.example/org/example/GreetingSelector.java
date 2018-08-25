package org.example;

import org.example.astro.World;
import org.example.vehicle.Car;

public class GreetingSelector {

    public static String selectWorld() {
        return World.name();
    }

    public static String selectVehicle() {
        return Car.name();
    }

    public static Class<?> selectByName(String name) {
        switch (name) {
            case "world":
                return World.class;
            case "car":
                return Car.class;
            default:
                return null;
        }
    }
}