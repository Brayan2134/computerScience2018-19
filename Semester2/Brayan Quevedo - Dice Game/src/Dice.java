/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  1/29/2019
 * PURPOSE: Hello World
 */

import java.util.Random;
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
	
	public int rollDice1(){
		Random rand = new Random(); // Create am object to assign random to
		die1 = rand.nextInt(21); // Sets random between 0-20
		return die1;
	}
	
	public int rollDice2(){
		// REFER TO DOCUMENTATION ROLLDICE1
		Random rand2 = new Random();
		die2 = rand2.nextInt(21);
		return die2;
	}
	
	
	public boolean isItSeven(){
		return sumDice() == 7;
	}
	
	//VARS
	public int die1, die2;
}
