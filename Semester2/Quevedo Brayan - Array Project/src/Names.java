/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE: 3/12/19
 * PURPOSE: Use what we have learned in namelists and nameArray demo to create a new program.
 * 			- GET 5 NAMES FROM USER (FIRSTNAME) - DONE
 * 			- UPCASE ALL NAMES - DONE
 * 			- FIND LONGEST - DONE
 * 			- Compare (other than length) - Done
 * 			- APPLY WITH 2 OTHER METHODS - DONE
 * 			- Sort list of names alphabetically - DONE
 * 			
 * 			BEYOND:
 * 				- Menu based program.
 */

import cs1.Keyboard; // Get keyboard input
import java.util.Arrays;


public class Names {
	
	// Create constant LIMIT
	final static int LIMIT = 5;
	
	// Define nameArray (String)
	String[] nameArray = new String[LIMIT];
	
	
	
	//**********************************************************
	
	
	
	// Method that will ask user to input the names into the nameArray
	public void getInput(){
		for (int index = 0; index < LIMIT; index++){
			System.out.print("name[" + index + "] = ");
			String x = Keyboard.readString();
			x = x.toUpperCase(); // Uppercase temping
			nameArray[index] = x;
		}
	}
	
	
	// Get longest temping
	public String getLarge(){
		int large = 0;
		String longestString = "";
		for (int index = 0; index < LIMIT; index++){
			if (large <= nameArray[index].length()){
				large = nameArray[index].length();
				longestString = nameArray[index];
			}
		}
		return longestString;
	}
	 
	// Print out all tempings in nameArray
	void outputnameArray(){
		for (int index = 0; index < LIMIT; index++){
			System.out.println(nameArray[index]);
		}
	}
	
	// Sort the Array from A-Z
	void sortArray(){
		int size = nameArray.length;

		for(int i = 0; i < size - 1; i++) {
	       for (int j = i + 1; j< nameArray.length; j++) {
	          if(nameArray[i].compareTo(nameArray[j]) > 0) {
	             String temp = nameArray[i];
	             nameArray[i] = nameArray[j];
	             nameArray[j] = temp;
	          }
	       }
	    }
	    System.out.println("Array (A-Z): " + Arrays.toString(nameArray));
	}
	
	
	// WORKS BUT DISPLAYS EVERY VOWELS
	void getArrayVowelCount(){
		for (int index = 0; index < LIMIT; index++){
			String str = nameArray[index];
	        for(int i=0;i <str.length();i++){
	            if((str.charAt(i) == 'A') || 
	                (str.charAt(i) == 'E')  ||
	                (str.charAt(i) == 'I') || 
	                (str.charAt(i) == 'O') ||
	                (str.charAt(i) == 'U')) {
	            		System.out.println(" The String " + nameArray[index] + " contains " + str.charAt(i));
	            }
	        }
	        System.out.println(""); // Create whitespace
		}
	}
	
	
	public String getShort(){
		int shortest = 0;
		String shortestString = "";
		shortest = nameArray[0].length(); // Initl it by saying that the first in sequence is smallest
		for (int index = 0; index < LIMIT; index++){
			if (shortest >= nameArray[index].length()){ // If shortest is bigger than array in sequence, update shortest
				shortest = nameArray[index].length();
				shortestString = nameArray[index];
			}
		}
		return shortestString;
	}
	//********************************************************
	
	
	// Main method
	public static void main(String[] args) {
		
		// Tabbed for readbility
		Names main = new Names(); // Create new object
			main.getInput();// Init & get the names from the user & uppercase
			
			System.out.println("Largest String: " + main.getLarge()); // Get longest temping
			
			main.sortArray(); // Sort the array (A-Z)
			
			main.getArrayVowelCount(); // Get vowels in Array
			
			System.out.println("The shortest word is: " + main.getShort()); // Get shortest string
	}
}