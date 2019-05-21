/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  1/29/2019
 * PURPOSE: Hello World
 */

import cs1.Keyboard;

public class Array {

	// Global vars
	char userSelectOption;
	int howManyTimesUserHasSelectedAddMusic = 0;
	
	public String artistName, albumName, songName; // Main vars needed for lookup
	final static int ARRAYSIZE = 100; // Size of Array
	
	// WE ARE RUNNING PARALLEL ARRAYS
	int MAXNUMOFSONGS[] = new int[ARRAYSIZE]; //declaration and instantiation
	String ARTISTNAME[] = new String[ARRAYSIZE];
	String ALBUMNAME[] = new String[ARRAYSIZE];
	String SONGNAME[] = new String[ARRAYSIZE];
	
	/*******************************************************************************/
	// Startup Procedures of program
	void startUp(){
		initArray();
		mainMenu();
	}
	
	// Init array
	void initArray(){
		for (int x = 0; x < ARRAYSIZE; x++){
			MAXNUMOFSONGS[x] = x;		
			// Songs: 0-99
		}
		initBasicInfo(); // After Array is init, Add basic info
	}
	
	// Some sample data to the program
	void initBasicInfo(){
			SONGNAME[0] = "Test Song Name Data";
			ARTISTNAME[0] = "Test Artist Name Data";
			ALBUMNAME[0] = "Test Album Name Data";
			
			SONGNAME[1] = "Mis Tres Viejas";
			ARTISTNAME[1] = "Los Tucanes De Tijuana";
			ALBUMNAME[1] = "Corridos A Quema Ropa";
			
			SONGNAME[2] = "Cut Your Teeth (Kygo Remix)";
			ARTISTNAME[2] = "Kyla La Grange";
			ALBUMNAME[2] = "Cut Your Teeth (Kygo Remix)";
			
			SONGNAME[3] = "Welcome to the Jungle";
			ARTISTNAME[3] = "Guns N' Roses";
			ALBUMNAME[3] = "Appetite for Destruction (Super Deluxe)";
			
			SONGNAME[4] = "Happy Place";
			ARTISTNAME[4] = "Alison Wonderland";
			ALBUMNAME[4] =  "Awake";
			
			SONGNAME[5] = "Following (feat. Hayley May)";
			ARTISTNAME[5] = "Martin Ikin";
			ALBUMNAME[5] = "Following (feat. Hayley May)";
	}
	
	// Main Menu of program
	void mainMenu(){
		
		System.out.println("\t Please select an option below:");
		System.out.println("[A]dd more music");
		System.out.println("A[U]to fill song collection");
		System.out.println("[S]ort music");
		System.out.println("[Q]uit");
		System.out.print("Please select an option: ");
		userSelectOption = Keyboard.readChar();
		userSelectOption = Character.toUpperCase(userSelectOption); // Uppercase user selection
		
		do{
			if (userSelectOption == 'A' || userSelectOption == 'U' || userSelectOption == 'S' || userSelectOption == 'Q'){
				redirUser();
			}
			else{
				System.out.println("Sorry, that was an invalid answer, please try again.");
				System.out.print("Please select an option: ");
				userSelectOption = Keyboard.readChar();
				userSelectOption = Character.toUpperCase(userSelectOption); // Uppercase user selection
			}
		} while (userSelectOption == 'A' || userSelectOption == 'U' || userSelectOption == 'S' || userSelectOption == 'Q');
	}
	
	// From main menu --> redir user --> where user wants to go
	void redirUser(){
		switch(userSelectOption){
			case 'A':
				addMusicToCollection();
				howManyTimesUserHasSelectedAddMusic++;
				break;
			case'U':
				break;
			case 'S':
				showMusic();
				break;
			case 'Q':
				break;
		}
	}
	
	// Display all music in lib
	void showMusic(){
		System.out.println("Song name: \t Album name: \t Artist name:");
		for (int x = 0; x < ARRAYSIZE; x++){
			System.out.println(SONGNAME[x] + "\t" + ALBUMNAME[x] + "\t" + ARTISTNAME[x]);
		}
		mainMenu();
	}
	
	// User adds more music to selection
	void addMusicToCollection(){
	int WhatSongIsAv = 0;	
	String tempAddArtistName = "";
	String tempAddAlbumName = "";
	String tempAddSongName = "";
	
		if (howManyTimesUserHasSelectedAddMusic == 1){
			WhatSongIsAv = 5;	
		}
	}
}
