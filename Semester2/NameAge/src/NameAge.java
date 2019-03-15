/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  1/29/2019
 * PURPOSE: Hello World
 */

import cs1.Keyboard;

public class NameAge {
	public static void main(String[] args) {

		// Class var
		String name = new String();
		int age = 0;
		float gpa = 0;
		
		// Ask for name
		System.out.print("Please enter your name: ");
		name = Keyboard.readString();
		
		// Ask for age
		System.out.print("Please Enter your age: ");
		age = Keyboard.readInt();
		
		// Ask for GPA
		System.out.print("Please enter your GPA: ");
		gpa = Keyboard.readFloat();
		
		// Print out name/age/gpa
		System.out.println(name + " is " + age + " years old.");
		System.out.println(name + " has a " + gpa + " GPA in school.");
		
		// find out what average letter grade the GPAis.
		// 4 is A
		// 3 is B
		// 2 is C
		// 1 is D
		// 0 is F
		
		float percentage = 0;
		percentage = gpa;
		
		int display = 1; // Can only display 1 option
		
		// DISPLAY IS SET TO 0 TO ONLY DISPLAY 1 OPTION BELOW.
		
		// If A
		if (percentage == 4 && display == 1){
			display = 0;
			System.out.println("The average Letter Grade is a: A");
		}
		
		// If B
		if (percentage >= 3 && percentage != 4 && display == 1){
			display = 0;
			System.out.println("The average letter grade is a: B");
		}
		
		// If C
		if (percentage >= 2 && percentage != 3 && display == 1){
			display = 0;
			System.out.println("The average letter grade is a: C");
		}
		
		// If D
		if (percentage >= 1 && percentage != 2 && display == 1){
			display = 0;
			System.out.println("The average letter grade is a: D");
		}
		
		// If F
		if (percentage >= 0 && percentage != 1 && display == 1){
			display = 0;
			System.out.println("The average letter grade is a: F");
		}
	}

}
