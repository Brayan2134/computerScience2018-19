/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  1/29/2019
 * PURPOSE: To work with strings.
 */

import cs1.Keyboard;

public class TextMani {

	public static void main(String[] args) {
		
		// Class called name
		String name = new String("Brayan Quevedo");
		
		// Output a string.
		System.out.println(name);
		
		// Lookup char
		System.out.println(name.charAt(7));
		
		// Where is a char
		System.out.println(name.indexOf('B'));
		
		// Substring
		System.out.println(name.substring(4,10));
		
		// Length
		System.out.println(name.length());
		
		// Declare var
		int data = 0;
		
		// Let use type number
		System.out.println("Enter favorite number: ");
		System.out.println(data); // Record user entry
		
		// Putting strings together
		System.out.println("Your name is " + name);
	}
}