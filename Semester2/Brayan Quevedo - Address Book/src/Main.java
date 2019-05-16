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
		
		Address info = new Address("Brayan", "Quevedo-Ramos", "", "", 16, 'M');
		System.out.println(info.toString());
	}
}