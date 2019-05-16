/*
 * DEFINE A NOTECARD
 * 
 * Date -- Vars
 * 
 * Constructor -- 2
 * 
 * Methods -- 
 * */

public class Address {
	
	/*
	 * 
	 * -------------------------------
	 * VARIABLES
	 * -------------------------------
	 * 
	 * */
	
	private String first, last, instagram, facebook;
	private int age;
	private char gender;
	
	/*
	 * 
	 * --------------------------------
	 * CONSTRUCTORS
	 * --------------------------------
	 * 
	 * */
	
	// Load with default values
	public Address(){
		first = "";
		last = "";
		instagram = "";
		facebook = "";
		age = 0;
		gender = 'x';
	}

	// User decides info
	public Address(String name1, String name2, String ig, String fb, int year, char sex){
		
		// Load default data into local vars
		first = name1;
		last = name2;
		instagram = ig;
		facebook = fb;
		age = year;
		gender = sex;
	}
	
	/*
	 * 
	 * --------------------------------
	 * METHDOS
	 * --------------------------------
	 * 
	 * */
	
	// Redefine toString method
	public String toString(){
		
		// Make all var data into one string
		String data;
		data = first + "\t" + last + "\t";
		data += age + "\t" + gender;
		
		return data;
	}
}