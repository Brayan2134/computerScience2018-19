/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  2/26/19
 * PURPOSE: - To write a program that asks the user for two names,
 * 			- upcase both names and display
 * 			- find and display the longer name
 * 			 - Do some sort of comparison i.e are the names the same?
 * 			- or display in alphabetical order.
 * 			aPPLY AT LEAST TWO OTHER STRING METHODS
 * 			DISPLAY MEANINFUL INFO
 * 			
 */

import cs1.Keyboard;

public class NameList {
	
	// Create data structures
	String name1;
	String name2;
	
	// Get the first two strings from the user 
	void getUserStrings(){
		System.out.print("Please enter a string: ");
		name1 = Keyboard.readString();
		
		System.out.print("Enter another string: ");
		name2 = Keyboard.readString();
	}
	
	// Uppercase both strings
	void upperCaseStrings(){
		name1 = name1.toUpperCase();
		name2 = name2.toUpperCase();
		System.out.println("The two names are: " + name1 + " and " + name2 + ".");
	}
	
	// Find what string is larger
	void displayLargerString(){
		if (name1.compareTo(name2) > 0){
			System.out.println(name2 + " Comes first alphabetically");
		}
		else{
			System.out.println(name1 + " Comes first alphabetically");
		}
	}
	
	// Check hash code of the string
	void checkString(){
		System.out.println("The hash code of " + name1 + " string is " + name1.hashCode());
		System.out.println("The hash code of"  + name2 + "string is " + name2.hashCode());
	}
	
	void concatString(){
		System.out.println("The string together is: " + name1.concat(name2));
	}
	
	public static void main(String[] args) {
		NameList main = new NameList(); // Create main object
		main.getUserStrings(); // Get basic user input
		main.upperCaseStrings(); // Upper case all the strings
		main.displayLargerString(); // Try to find out what string is bigger
		main.checkString(); // Get hash code for the strings
		main.concatString();
	}
}
