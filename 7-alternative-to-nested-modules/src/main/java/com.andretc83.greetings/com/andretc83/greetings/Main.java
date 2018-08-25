package com.andretc83.greetings;

import org.example.GreetingSelector;
import java.lang.reflect.Method;
import java.lang.reflect.InvocationTargetException;

public class Main {
	public static void main(String[] args) {
		Class<?> greetings = GreetingSelector.selectByName("car");
		
		try {
			Method m = greetings.getMethod("name", new Class<?>[]{ });
			String greet = (String) m.invoke(null, new Object[]{ });
			System.out.format("Greetings %s!%n", greet);
		} catch (NoSuchMethodException nsme) {
			nsme.printStackTrace();
		} catch (IllegalAccessException iae) {
			iae.printStackTrace();
		} catch (InvocationTargetException ite) {
			ite.printStackTrace();
		}

		// The classes below are not accessible because there is not support
		// for transitive module dependencies
		//
		// System.out.format("Greetings %s!%n", org.example.astro.World.name());
		// System.out.format("Greetings %s!%n", org.example.vehicle.Car.name());
	}
}
