/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  2/28/19
 * PURPOSE: Practice using arrays.
 */

import cs1.Keyboard;

public class ArrayDemo {
	
	// Create a constant
	final static int LIMIT = 3;
	
	// Define Array (Int)
	int[] scores = new int [LIMIT];
	
	// Define Array (Double)
	double[] donations = new double[LIMIT];
	
	// A method that will set each method to a starting value
	public void initArray(){
		for (int index = 0; index < LIMIT; index++){
			scores[index] = 0;	
		}
	}
	
	public void outputArray(){
		for (int index = 0; index < LIMIT; index++){
			System.out.println(scores[index]);
		}
	}
	
	// You will need to write a method that will display the content
	// 	It should look like: scores[2] = 8;
	// List the items in order of the array
	
	public void getInput(){
		for (int index = 0; index < LIMIT; index++){
			System.out.print("scores[" + index + "] = ");
			int x = Keyboard.readInt();
			scores[index] = x;
		}
	}
	
	public int getSum(){
		int sum = 0;
		for (int index = 0; index < LIMIT; index++){
			sum = scores[index] + sum;
		}
		return sum;
	}
	
	
	public int getSmall(){
		int small = 0;
		for (int index = 0; index < LIMIT; index++){
			if (small >= scores[index]){
				small = scores[index];
			}
		}
		return small;
	}
	
	public int getLarge(){
		int large = 0;
		for (int index = 0; index < LIMIT; index++){
			if (large <= scores[index]){
				large = scores[index];
			}
		}
		return large;
	}
	
	
	public static void main(String[] args) {
		System.out.println("\tWelcome to array demo\n\n");
		ArrayDemo box = new ArrayDemo();
		box.initArray();
		box.getInput();
		box.outputArray();
		System.out.println("Sum: " + box.getSum());
		System.out.println("Smallest Number: " + box.getSmall());
		System.out.println("Largest Number: " + box.getLarge());
		
		Sorts.selectionSortAscending(box.scores);
		box.outputArray();
		
		Sorts.selectionSortDecending(box.scores);
		box.outputArray();
	}
}