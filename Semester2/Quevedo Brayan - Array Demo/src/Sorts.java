/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  3/12/19
 * PURPOSE: To create a class that contains all sort methods
 */

public class Sorts {

	public static void selectionSortAscending(int[] numbers){
		int min, dummy;
		
		for (int index = 0; index < numbers.length - 1; index++){
			min = index;
			
			for (int scan = index + 1; scan < numbers.length; scan++){
				if (numbers[scan] < numbers[min]){
					min = scan;
				}
			}
			
			// Swap
			dummy = numbers[min];
			numbers[min] = numbers[index];
			numbers[index] = dummy;
		}
	}
	
	public static void selectionSortDecending(int[]numbers){
		int min, dummy;
		
		for (int index = 0; index > numbers.length - 1; index++){
			min = index;
			
			for (int scan = index + 1; scan > numbers.length; scan++){
				if (numbers[scan] > numbers[min]){
					min = scan;
				}
			}
			
			// Swap
			dummy = numbers[min];
			numbers[min] = numbers[index];
			numbers[index] = dummy;
		}
	}
}
