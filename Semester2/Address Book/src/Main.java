/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  5/13/19
 * PURPOSE: Hello World
 * 
 * ASSIGNMENT: 	CREATE 3RD ADDRESS NOTECARD
 * 				User type in info
 */

import cs1.Keyboard;

public class Main {
	public static void main(String[] args){
		// Address info = new Address(); 
		
		Address info = new Address("Brayan", "Quevedo-Ramos", 16, 'M');
		System.out.println(info.toString());
		
		Address info2 = new Address("CONSUELO", "Yes", 85, 'F');
		System.out.println(info2.toString());
		
		System.out.print("Firstname: ");
		String first = Keyboard.readString();
		
		System.out.print("Lastname: ");
		String last = Keyboard.readString();
		
		System.out.print("Age: ");
		int age = Keyboard.readInt();
		
		System.out.print("Gender: ");
		char gender = Keyboard.readChar();
		
		Address info3 = new Address(first, last, age, gender);
		System.out.println(info3.toString());
	}
}