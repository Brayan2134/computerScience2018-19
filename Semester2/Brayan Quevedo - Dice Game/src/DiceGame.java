/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  4/8/19
 * PURPOSE: Dice Game.
 * 
 * STRUCTURE:
 * 	- INTRO
 * 	
 *  - MENU
 *  	- MENU -> REDIRECT
 *  		- REDIRECT -> ACTION
 *  - ACTION -> MENU
 *  
 *  - QUIT
 */

import cs1.Keyboard;
public class DiceGame {
	
	/*
	 * 
	 * GLOBAL VAR VALUES
	 * 
	 */
	int balance = 0; // Starting balance for user
	int amtOfBet = 0; // Default amount of bet
	int howManyTimesPlayed = 0; // How many times the user has bet
	
	void intro(){
		System.out.println("\t Welcome to the Dice Rolling game");
		System.out.println("The goal of the game is to make as much money as possible!");
		System.out.println("LET'S ROLL!!!");
		System.out.println("");
		System.out.println("How much would you like to start off with?: ");
		balance = Keyboard.readInt();
		
		// Quick fix if user inserted valid number
		if (balance <= 0){
			balance = 5;
		}
	}
	
	/*Rules for the game*/
	public static void rulesOfGame(){
		System.out.println("");
		System.out.println("RULES OF GAME");
		System.out.println("1) You start off with $100");
		System.out.println("2) You can only bet up to the amount you have");
		System.out.println("3) At $0 you lose the game");
		System.out.println("4) If you land a 7 (on guess above a number), or hit a seven (on choosing individual dice), you LOSE ALL MONEY");
		System.out.println("");
	}
	
	/*Display Menu*/
	public char mainMenu(){
		char userSelectMenuOption; // Var for user to get char
		
		/*MENU*/
		System.out.println("");
		System.out.println("MENU");
		System.out.println("[P]lay game");
		System.out.println("[R]ead rules");
		System.out.println("[C]heck balance");
		System.out.println("[Q]uit");
		System.out.println("");
		
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
			
		// Check how many times the user has bet
		case'H':
			howManyTimesPlayed();
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
		int dice1 = 0; // Init var for rolling the dice
		int dice2 = 0; // Init Var for rolling the dice
		int diceSum = 0; // Init var for adding both dice
		int guessDice1 = 0; // Init what user thinks the first dice is
		int guessDice2 = 0; // Init what user thinks the SECOND dice is
		int guess = 0; // Guess above number that the user chooses
		boolean guessBothDice = false; // Boolean to ask user if they want to roll the dice above a certain number or specific numbers
		char userChooseBetType;
		
		// ASK USER FOR BETTING INFORMATION
		System.out.print("How much would you like to bet?: ");
		amtOfBet = Keyboard.readInt();
		
		while (amtOfBet == 0 || amtOfBet <= 0 || amtOfBet > balance){
			// IF BET AMOUNT IS HIGHER THAN BALANCE THAN CHANGE BET AMOUNT TO BALANCE
			if (amtOfBet > balance){
				System.out.println("Sorry! You choose too high of a number.");
				System.out.println("Don't worry, I changed it to a valid number for you.");
				amtOfBet = balance;
			}
			
			// User can't bet 0
			if (amtOfBet == 0){
				System.out.println("YOU CAN'T BET NOTHING!");
				System.out.print("Try again: ");
				amtOfBet = Keyboard.readInt();
			}
			
			// User can't bet less than 0
			if (amtOfBet < 0){
				System.out.println("You Can't bet negative.");
				System.out.print("Try again: ");
				amtOfBet = Keyboard.readInt();
			}
		}
		
		// Ask user if they want to bet above a number or go all out?
		System.out.println("Would you like to either:");
		System.out.println("[B]et above a number (that you choose)");
		System.out.println("[C]hoose specified numbers that you believe will be rolled (10X PROFIT)");
		System.out.print("PLEASE CHOOSE AN OPTION: ");
		userChooseBetType = Keyboard.readChar();
		userChooseBetType = Character.toUpperCase(userChooseBetType); // Uppercase for pointer tracking
		
		// Boolean will be assigned depending on what the user choose
		if (userChooseBetType == 'B'){ // They choose a number above
			guessBothDice = false;
		}
		else if (userChooseBetType == 'C'){ // THEY DO CHOOSE THE TWO DICE
			guessBothDice = true;
		}
		else{ // If user didn't pick either option, assume it's a no
			guessBothDice = false;
		}
		
		// User chooses to guess above a number
		if (guessBothDice == false){
			System.out.print("Please the number you think the dice will go above (0-40): ");
			guess = Keyboard.readInt();
		}
		
		// Assume the guessBothDice is true
		else{
			System.out.print("Please choose a number for dice one (0-20): ");
			guessDice1 = Keyboard.readInt();
			
			System.out.print("Please choose a number for dice two (0-20)Game : ");
			guessDice2 = Keyboard.readInt();
		}
		
		/*THE ACTUAL DICE ROLLING*/
		Dice rollTheDice = new Dice(dice1,dice2); // Create class to roll the dice
			dice1 = rollTheDice.rollDice1(); // Roll the first dice
			dice2 = rollTheDice.rollDice2(); // Roll the second dice
			diceSum = dice1 + dice2;
			
		/*DEPENDING ON WHAT THE USER CHOOSE,
		 * DO THE COMPARISONS
		 * DEPENDING ON BOOLEAN*/
			
		/*
		 * HOW TO AWARD POINTS TO THE USER
		 * 
		 * IF GUESSBOTHDICE IS FALSE
		 * -------------------------
		 * IF CORRECT
		 * 	ADD TO BALANCE THE AMOUNT THEY GUESS
		 * 
		 * IF INCORRECT
		 * 	SUBTRACT THE BALANCE AMOUNT THEY GUESS
		 * 
		 * IF GUESSBOTHDICE IS TRUE
		 * ------------------------
		 * IF CORRECT
		 * 	MULTIPLY THE DICESUM * 10
		 * 
		 * IF INCORRECT
		 * 	SUBTRACT 99 POINTS
		 * */
			
		// USER DID NOT CHOOSE TO GUESS INDIVIDUAL DICE
		if (guessBothDice == false){
			// If the user chose a number lower than the dice roll, give them points
			if (diceSum > guess && diceSum !=7){
				balance = balance + diceSum;	
				System.out.println("You were correct! Balance: " + balance);
			}
			else if (diceSum < guess || diceSum == 7){
				balance = balance - guess;
				System.out.println("Sorry you were incorrect :( Balance: " + balance);
			}
		}
		
		// USER DID CHOOSE TO GUESS INDIVIDUAL DICE
		if (guessBothDice == true){
			// USER WAS CORRECT
			if (guessDice1 == dice1 && guessDice2 == dice2 && dice1 != 7 && dice2 != 7){
				balance = diceSum * 10;
				System.out.println("You were correct! Balance: " + balance);
			}
			// User was incorrect
			else if (guessDice1 != dice1 || guessDice2 != dice2 || dice1 == 7 || dice2 == 7){
				balance = balance - 99;
				System.out.println("Sorry you were incorrect :( Balance: " + balance);
			}		
		}
		return balance;
	}
	
	// Verify if user can play again
	// Check balance
	public boolean canPlayAgain(){
		boolean tempPlayAgain = true; // Initl boolean
		
		if (balance <= 0){
			tempPlayAgain = false;
		}
		else{
			tempPlayAgain = true;
		}
		
		return tempPlayAgain;
	}
	
	// Outro sequence
	void exit(){
		System.out.println("Thank you for playing the dice rolling game!");
		System.out.println("Come again!");
	}
	
	// See how many times user has played
	void howManyTimesPlayed(){
		System.out.println("You have played: " + howManyTimesPlayed);
	}
	
	// Loan Shark option
	public int loanShark(){
		
		/*
		 *	STRUCUTURE OF LOANSHARK
		 * 	-----------------------
		 * 
		 * Intro
		 * -----
		 * 	The loanshark is set to false by default.
		 * 	If the user runs out of money, ask them if they want to use the loan shark
		 * 		IF NO
		 * 		-----
		 * 			Quit program
		 * 
		 * 		IF YES
		 * 		------
		 * 			Set loanshark boolean to true
		 * 			Ask them how much they want (up to 500)
		 * 			Give it to them
		 * 				After every turn, if they don't make 20 points, subtract 50 points
		 * 				If they do make over 20 points, then subtract 20 points from the loanshark amount
		 * 				
		 * 	THE BOOLEAN IS SET TO FALSE IF THEY PAY IT OFF
		 * 
		 * TELL USER THAT THEY HAVE A LOANSHARK PENDING IF THEY EXIT THE GAME WITH A LOANSHARK
		 * */
		
		int tempAskForAmount = 0;
		System.out.println("How much would you like? (Up to 500)");
		tempAskForAmount = Keyboard.readInt();
		do{
			
		}while (tempAskForAmount > 0 || tempAskForAmount >= 501);
		return balance;
	}
	
	public static void main(String[] args) {
		DiceGame diceGame = new DiceGame();
		
		char option; // Option for menu
		boolean continueToPlay = true; // Default -- They want to play game
		//boolean loanShark = false; // Default -- Loanshark option
		//char getLoanShark; // Ask user if they'd like a loanshark
		
		// Intro to program
		diceGame.intro();
		
		// Actual Game
		while (continueToPlay == true){
			option = diceGame.mainMenu(); // User picks option from menu
			option = Character.toUpperCase(option);
			
			// If user picked quit, then make break to exit program
			if (option == 'Q'){
				continueToPlay = false;
			}
			
			// (made to break in the event user clicked Q)
			if (continueToPlay == true){
				diceGame.redirectUser(option); // Take user to where they want to go 
				continueToPlay = diceGame.canPlayAgain(); // Check to see if user can play again
			}
			
			// Check to see if user has no money and wants a loanshark
			/*
			if (continueToPlay == false && diceGame.balance <= 0){
				System.out.println("I see that you have no money...");
				System.out.println("Would you like loanshark to have some money?");
				System.out.println("[Y]es");
				System.out.println("[N]o");
				System.out.println("Answer: ");
				getLoanShark = Keyboard.readChar();
				getLoanShark = Character.toUpperCase(getLoanShark);
				
				// Verify if user wants loanshark
				if (getLoanShark == 'Y'){
					loanShark = true;
					diceGame.loanShark();
					continueToPlay = true;
				}
				else{
					loanShark = false;
				}
			}
			*/
			
		}
		diceGame.exit(); // Exit game
	}
}