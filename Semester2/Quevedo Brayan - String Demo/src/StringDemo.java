/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  2/26/19
 * PURPOSE: Work with string class
 */

public class StringDemo {
	public static void main(String[] args) {
		String phrase = new String("Change is inevidable");
		String mutation1, mutation2, mutation3, mutation4;
		
		System.out.println("Original string: \"" + phrase + "\"");
		System.out.println("Length of string: " + phrase.length());
		
		mutation1 = phrase.concat(", except in vending machines");
		System.out.println("Mutation 1: " + mutation1);
		
		mutation2 = mutation1.toUpperCase();
		System.out.println("Mutation 2: " + mutation2);
		
		mutation3 = mutation2.replace('E', 'X');
		System.out.println("Mutation 3: " + mutation3);
		
		mutation4 = mutation3.substring(3, 30);
		System.out.println("Mutation 4: " + mutation4);
		
		String name1 = "Bika", name2 = "Steve", name3 = "Bike";
		
		if (name1 == name2){ // Legal but usually wrong
			System.out.println("Names are the same");
		}
		
		// Prefered way
		if (name1.equals(name2)){
			
		}
		
		if (name1.compareTo(name3) > 0){
			System.out.println(name3 + "Comes first alphabetically");
		}
		
		System.out.println(name1.compareTo(name2));
		System.out.println(name1.compareTo(name3));
		System.out.println(name3.compareTo(name1));
	}
}