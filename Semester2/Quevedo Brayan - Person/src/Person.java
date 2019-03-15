/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  2/12/19
 * PURPOSE: Create a person class
 * 			Data: Age, Name, Fav Color.
 * 			Actions: get data from user
 * 			Display: User information/days old.
 * 			
 * 			- Make student object
 * 			- Ask students information
 * 			- Display 3 sentences
 * 				- (name) is (age) years old.
 * 				- (name)'s favorite color is (color)
 * 				- (name) is (days) old.
 */

import cs1.Keyboard;

public class Person {
	
	// Create data/attributes
	String name; // Student's name
	String school; // What school the student goes to
	int age; // Student's age
	String color; // Student's fav color
	int days_old; // How old the student is
	float gpa; // Student GPA
	int display; // To only display 1 GPA
	
	
	// Create behaviours/actions
	
	// Get student information
	void getStudentInfo(){
		System.out.print("What's your name?: ");
		name = Keyboard.readString();
		
		System.out.print("How old are you?: ");
		age = Keyboard.readInt();
		
		System.out.print("What's your favorite color?: ");
		color = Keyboard.readString();
		
		System.out.print("What school do you go to?: ");
		school = Keyboard.readString();
	}
	
	//Callback student information
	void displayStudentInformation(){  
		System.out.println("The student's name is: " + name);
		System.out.println(name + " is " + age + " years old.");
		System.out.println("The school that " + name + " goes to is " + school);
		System.out.println(name + "'s favorite color is " + color + ".");
		System.out.println(name + " is " + days_old + " days old.");
	}
	
	// See if the person is child, teen, or adult
	void studentAgeType(){
		if (age <= 13){
			System.out.println(name + " is a child.");
		}
		else if (age > 13 && age <= 17){
			System.out.println(name + " is a teen.");
		}
		else if (age >= 18){
			System.out.println(name + " is an adult");
		}
		else{
			System.out.println("Error.");
		}
	}
	
	// Calc days old
	void studentDaysOld(){
		days_old = age * 12; // Convert age in years to months
		days_old = days_old * 30; // Convert age in months to days
	}
	
	// Get GPA
	void inputStudentGpa(){
		System.out.println();
		System.out.print("What's your gpa?: ");
		gpa = Keyboard.readFloat();
		
		// DISPLAY IS SET TO 0 TO ONLY DISPLAY 1 OPTION BELOW.
		display = 1;
		
		// If A
		if (gpa == 4 && display == 1){
			display = 0;
			System.out.println("The average Letter Grade is a: A");
		}
				
		// If B
		if (gpa >= 3 && gpa != 4 && display == 1){
			display = 0;
			System.out.println("The average letter grade is a: B");
		}
				
		// If C
		if (gpa >= 2 && gpa != 3 && display == 1){
			display = 0;
			System.out.println("The average letter grade is a: C");
		}
				
		// If D
		if (gpa >= 1 && gpa != 2 && display == 1){
			display = 0;
			System.out.println("The average letter grade is a: D");
		}
				
		// If F
		if (gpa >= 0 && gpa != 1 && display == 1){
			display = 0;
			System.out.println("The average letter grade is a: F");
		}
	}
	
	// MAIN.
	public static void main(String[] args) {
		Person student = new Person(); // Create Object
		student.getStudentInfo(); // Get basic student info
		student.studentDaysOld(); // Calc days old
		student.displayStudentInformation(); // Display student info
		student.studentAgeType();
		student.inputStudentGpa(); // User inputs GPA & receives average grade letter
	}
}