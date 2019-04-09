/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  4/8/19
 * PURPOSE: Dice Game.
 */

import cs1.Keyboard;
public class DiceGame {
	
	/*
	 * 
	 * GLOBAL VAR VALUES
	 * 
	 */
	int balance = 100; // Starting balance for user
	int amtOfBet = 0; // Default amount of bet
	
	/*Rules for the game*/
	public static void rulesOfGame(){
		System.out.println("RULES OF GAME");
		System.out.println("1) You start off with $100");
		System.out.println("2) You can only bet up to the amount you have");
		System.out.println("3) At $0 you lose the game");
	}
	
	/*Display Menu*/
	public char mainMenu(){
		char userSelectMenuOption; // Var for user to get char
		
		/*MENU*/
		System.out.println("MENU");
		System.out.println("[P]lay game");
		System.out.println("[R]ead rules");
		System.out.println("[C]heck balance");
		System.out.println("[Q]uit");
		
		System.out.print("Please make a selection: ");
		userSelectMenuOption = Keyboard.readChar();
		userSelectMenuOption = Character.toUpperCase(userSelectMenuOption);
		
		/*Return value */
		return userSelectMenuOption;
	}
	
	/*What do to */
	public void redirectUser(char option){
		switch(option){
		
		// Play Game
		case'P':
			playGame(balance);
			break;
			
		// Read Rules
		case'R':
			rulesOfGame();
			break;
			
		// Check Balance
		case'C':
			checkBalance(balance);
			break;
			
		// Quit Game
		case'Q':
			break;
		}	
	}
	
	/*Check the amount of balance that the user has*/
	public void checkBalance(int balance){
		
		/*Fun messages to display to the user*/
		
		if (balance == 100){
			System.out.println("Wow you have " + balance + ", also known as the amount that you started with!");
		}
		else if (balance == 1 || balance < 10 ){
			System.out.println("Your living on the edge!");
			System.out.println("Current balance: " + balance);
		}
		else{
			System.out.println("Current balance: " + balance);
		}
	}
	
	/*Play the actual game*/
	public int playGame(int balance){
		int dice1 = 0; // Init var
		int dice2 = 0; // Init Var
		Dice rollTheDice = new Dice(dice1,dice2); // Create class to roll the dice
			dice1 = rollTheDice.rollDice1(); // Roll the first dice
			dice2 = rollTheDice.rollDice2(); // Roll the second dice
		return balance;
	}
	
	public static void main(String[] args) {
		DiceGame diceGame = new DiceGame();
		
		char option; // Option for menu
		boolean continueToPlay = true; // Default -- They want to play game
		
		// Actual Game
		while (continueToPlay == true){
			option = diceGame.mainMenu();
			diceGame.redirectUser(option);
			
				// If user clicked the 'Q'/Quit option, set Boolean to false
				continueToPlay = false;
		}
	}
}