/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  1/29/2019
 * PURPOSE: Hello World
 */
import java.util.*; 
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
		die1 = Math.random();
		return die1;
	}
	
	public int rollDice2(){
		return die2;
	}
	
	
	public boolean isItSeven(){
		return sumDice() == 7;
	}
	
	//VARS
	public int die1, die2;
}
