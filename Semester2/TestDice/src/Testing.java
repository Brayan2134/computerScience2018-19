/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  4/1/19
 * PURPOSE: To learn how to use a dice class and apply it to programs.
 */

public class Testing {
	public static void main(String[] args) {
		Dice greenDice = new Dice(3,4);
		System.out.println("You rolled a: " + greenDice.sumDice());
		System.out.println("You rolled a 7: " + greenDice.isItSeven());
	}
}