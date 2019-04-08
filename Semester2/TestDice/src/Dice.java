/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  1/29/2019
 * PURPOSE: Hello World
 */

public class Dice {

	//CONSTRUCTORS
	public Dice(int newDice1, int newDice2){
		die1 = newDice1;
		die2 = newDice2;
	}
	
	//METHODS
	public int sumDice(){
		return die1 + die2;
	}
	
	public boolean isItSeven(){
		return sumDice() == 7;
	}
	
	//VARS
	private int die1, die2;
}
