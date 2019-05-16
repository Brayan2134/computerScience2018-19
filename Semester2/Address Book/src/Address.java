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
	
	private String first, last;
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
		age = 0;
		gender = 'x';
	}

	// User decides info
	public Address(String name1, String name2, int year, char sex){
		
		// Load default data into local vars
		first = name1;
		last = name2;
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