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
	String noString = "";
	int x = 0;
	
	public String artistName, albumName, songName; // Main vars needed for lookup
	final static int ARRAYSIZE = 100; // Size of Array

	// WE ARE RUNNING PARALLEL ARRAYS
	int[] MAXNUMOFSONGS = new int[ARRAYSIZE]; //declaration and instantiation
	String[] ARTISTNAME = new String[ARRAYSIZE];
	String[] ALBUMNAME = new String[ARRAYSIZE];
	String[] SONGNAME = new String[ARRAYSIZE];
	
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
	
	void quit(){
		System.out.println();
		System.out.println("Thank you for using this program");
		System.out.println("Copyright - Brayan Quevedo 2019");
		System.exit(0);
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
			
			for (int z = 6; z < ARRAYSIZE; z++){
				ALBUMNAME[z] = "";
				SONGNAME[z] = "";
				ARTISTNAME[z] = "";
			}
			
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
				userAddsMusic();
			case'U':
				break;
			case 'S':
				howToDisplayMusic();
				break;
			case 'Q':
				quit();
		}
	}

	// User gets to add data into array
	private void userAddsMusic(){

		/*
		* THE COMPUTER WILL GO THROUGH THE SONG NAME ARRAY
		* IT WILL GO AFTER EACH SONG TO LOOK FOR A BLANK ""
		* AND IF IT FINDS ONE THEN IT WILL GO THROUGH THE ARTIST AND
		* ALBUMNAME AND IF ALL COME OUT FINE THEN THE USER CAN ADD INFORMATION
		* INTO THAT SECTION OF THE ARRAY
		* */

		boolean userAddedMusic = false;

			// Make sure that the user adds only one set of music
			if (userAddedMusic == false) {
				
				for (int i = 0; i < ARRAYSIZE; i++){

				// Look through each song in the array for blank spaces
				if (SONGNAME[i] == "") {

					// Look through the album array for blank spaces
					if (ALBUMNAME[i] == "") {

						// Look through the artist array for blank spaces
						if (ARTISTNAME[i] == "") {

							// User can start to add data
							System.out.println("");

							System.out.print("Please enter the song name: ");
							SONGNAME[i] = Keyboard.readString();

							System.out.print("Please enter the album name: ");
							ALBUMNAME[i] = Keyboard.readString();

							System.out.print("Please enter the artistname: ");
							ARTISTNAME[i] = Keyboard.readString();

							userAddedMusic = true; // To not make the user add more music
						}
					}
				}
				
				// Break if user adds music
				if (userAddedMusic == true){
					break;
				}
			}
		}
			mainMenu();
	}
	
	
	
		// User chooses how they want to see their music
		public void howToDisplayMusic(){
			char userSelect;
			
			System.out.println();
			System.out.println("How would you like to see your music?");
			System.out.println("[S]how music by number (1 - 100)");
			System.out.println("S[H]ow music from A-Z");
			System.out.println("Sh[O]w albums from A-Z");
			System.out.println("Sho[W] artists from A-Z");
			System.out.println("S[E]arch Music");
			
			System.out.print("Please make a selection: ");
			userSelect = Keyboard.readChar();
			userSelect = Character.toUpperCase(userSelect);
			
			switch(userSelect) {
				case ('S'):
					showMusic();
					break;
				case ('H'):
					sortSongNameArrayAZ();
					break;
				case ('O'):
					sortAlbumNameArrayAZ();
					break;
				case('W'):
					sortArtistNameArrayAZ();
					break;
				case('E'):
					searchForMusic();
					break;
			}
			mainMenu();
		}

		// User can search for a specific song/album/album
		void searchForMusic(){
			int resultsFound = 0; // How many results were found when searching
			char searchType; // The type of search that will be conducted
			String search; // Used for search
			String tempSearch; // Allocate array data to var

			System.out.println();
			System.out.println("Please select a type of search: ");
			System.out.println("[S]ongs");
			System.out.println("[A]lbums");
			System.out.println("A[R]tists");
			System.out.println();
			System.out.print("Please make a selection: ");
			searchType = Keyboard.readChar();

			searchType = Character.toUpperCase(searchType);
			// End Menu

			/*
			* STRUCTURE OF THIS SUB SECTION
			* -------------------------------
			*
			* User chose the type of search they want
			*
			* Then user types what they want to search
			*
			* Display available results
			*
			* */

			// User wants to search for songs
			if (searchType == 'S'){
				System.out.print("What do you want to search: ");
				search = Keyboard.readString();

				// Search through Array
				for (int i = 0; i < ARRAYSIZE; i++){
					tempSearch = SONGNAME[i];

					// Lower case both search index's
					tempSearch.toLowerCase();
					search.toLowerCase();

					
				}

			}// End Song Search

			// Album Search
			if (searchType == 'A'){

			}// End Album search

			// Artist Search
			if (searchType == 'R'){

			} // End Artist search

		}

		// Sort the array (song title) A-Z
		void sortSongNameArrayAZ(){
			int size = SONGNAME.length;

			for (int i = 0; i < size - 1; i++){
				for (int j = i + 1; j < SONGNAME.length; j++){
					if (SONGNAME[i].compareTo(SONGNAME[j]) > 0){

						String temp = SONGNAME[i];
						SONGNAME[i] = SONGNAME[j];
						SONGNAME[j] = temp;

					}
				}
			}
			System.out.println("Songs From A-Z");

			for (int i = 0; i < ARRAYSIZE; i++) {
				System.out.println("Song: " + SONGNAME[i]);
			}
		}

		// Sort the array (Artist name) A-z
		void sortArtistNameArrayAZ(){
			int size = ARTISTNAME.length;

			for (int i = 0; i < size - 1; i++){
				for (int j = i + 1; j < ARTISTNAME.length; j++){
					if (ARTISTNAME[i].compareTo(ARTISTNAME[j]) > 0){

						String temp = ARTISTNAME[i];
						ARTISTNAME[i] = ARTISTNAME[j];
						ARTISTNAME[j] = temp;

					}
				}
			}
			System.out.println("Artists From A-Z");

			for (int i = 0; i < ARRAYSIZE; i++) {
				System.out.println("Artist: " + ARTISTNAME[i]);
			}
		}

		// Sort the array (Album name) A-Z
		void sortAlbumNameArrayAZ(){
			int size = ALBUMNAME.length;

			for (int i = 0; i < size - 1; i++){
				for (int j = i + 1; j < ALBUMNAME.length; j++){
					if (ALBUMNAME[i].compareTo(ALBUMNAME[j]) > 0){

						String temp = ALBUMNAME[i];
						ALBUMNAME[i] = ALBUMNAME[j];
						ALBUMNAME[j] = temp;
					}
				}
			}
			System.out.println("Albums From A-Z");

			for (int i = 0; i < ARRAYSIZE; i++) {
				System.out.println("Album: " + ALBUMNAME[i]);
			}
		}

		//Makes the print statement aligned
		public String makeItemsAligned(){
			String returnVal = ""; // The amount of space that will be added
			int howLongIsString = 0; // How Long is string
			int addAmountOfChar = 50; // How much space will be added to the string
			
			// MAX LIMIT OF SPACE WILL BE 50 CHARS PER SPACE ADDITION
			
			// Add space to Songname
				 howLongIsString = SONGNAME[x].length(); // See how many chars are in the string
				 addAmountOfChar = addAmountOfChar - howLongIsString; // See how much space needs to be added
				 
				 if (addAmountOfChar == 0){
					 returnVal = "";
				 }
				 else if(addAmountOfChar == 1){
					 returnVal = " ";
				 }
				 else if(addAmountOfChar == 2){
					 returnVal = "  ";
				 }
				 else if(addAmountOfChar == 3){
					 returnVal = "   ";
				 }
				 else if(addAmountOfChar == 4){
					 returnVal = "    ";
				 }
				 else if(addAmountOfChar == 5){
					 returnVal = "     ";
				 }
				 else if(addAmountOfChar == 6){
					 returnVal = "      ";
				 }
				 else if(addAmountOfChar == 7){
					 returnVal = "       ";
				 }
				 else if(addAmountOfChar == 8){
					 returnVal = "        ";
				 }
				 else if(addAmountOfChar == 9){
					 returnVal = "         ";
				 }
				 else if(addAmountOfChar == 10){
					 returnVal = "          ";
				 }
				 else if(addAmountOfChar == 11){
					 returnVal = "           ";
				 }
				 else if(addAmountOfChar == 12){
					 returnVal = "            ";
				 }
				 else if(addAmountOfChar == 13){
					 returnVal = "             ";
				 }
				 else if(addAmountOfChar == 14){
					 returnVal = "              ";
				 }
				 else if(addAmountOfChar == 15){
					 returnVal = "               ";
				 }
				 else if(addAmountOfChar == 16){
					 returnVal = "                ";
				 }
				 else if(addAmountOfChar == 17){
					 returnVal = "                 ";
				 }
				 else if(addAmountOfChar == 18){
					 returnVal = "                  ";
				 }
				 else if(addAmountOfChar == 19){
					 returnVal = "                   ";
				 }
				 else if(addAmountOfChar == 20){
					 returnVal = "                    ";
				 }
				 else if(addAmountOfChar == 21){
					 returnVal = "                     ";
				 }
				 else if(addAmountOfChar == 22){
					 returnVal = "                      ";
				 }
				 else if(addAmountOfChar == 23){
					 returnVal = "                       ";
				 }
				 else if(addAmountOfChar == 24){
					 returnVal = "                        ";
				 }
				 else if(addAmountOfChar == 25){
					 returnVal = "                         ";
				 }
				 else if(addAmountOfChar == 26){
					 returnVal = "                          ";
				 }
				 else if(addAmountOfChar == 27){
					 returnVal = "                           ";
				 }
				 else if(addAmountOfChar == 28){
					 returnVal = "                            ";
				 }
				 else if(addAmountOfChar == 29){
					 returnVal = "                             ";
				 }
				 else if(addAmountOfChar == 30){
					 returnVal = "                              ";
				 }
				 else if(addAmountOfChar == 31){
					 returnVal = "                               ";
				 }
				 else if(addAmountOfChar == 32){
					 returnVal = "                                ";
				 }
				 else if(addAmountOfChar == 33){
					 returnVal = "                                 ";
				 }
				 else if(addAmountOfChar == 34){
					 returnVal = "                                  ";
				 }
				 else if(addAmountOfChar == 35){
					 returnVal = "                                   ";
				 }
				 else if(addAmountOfChar == 36){
					 returnVal = "                                    ";
				 }
				 else if(addAmountOfChar == 37){
					 returnVal = "                                     ";
				 }
				 else if(addAmountOfChar == 38){
					 returnVal = "                                      ";
				 }
				 else if(addAmountOfChar == 39){
					 returnVal = "                                       ";
				 }
				 else if(addAmountOfChar == 40){
					 returnVal = "                                        ";
				 }
				 else if(addAmountOfChar == 41){
					 returnVal = "                                         ";
				 }
				 else if(addAmountOfChar == 42){
					 returnVal = "                                          ";
				 }
				 else if(addAmountOfChar == 43){
					 returnVal = "                                           ";
				 }
				 else if(addAmountOfChar == 44){
					 returnVal = "                                            ";
				 }
				 else if(addAmountOfChar == 45){
					 returnVal = "                                             ";
				 }
				 else if(addAmountOfChar == 46){
					 returnVal = "                                              ";
				 }
				 else if(addAmountOfChar == 47){
					 returnVal = "                                               ";
				 }
				 else if(addAmountOfChar == 48){
					 returnVal = "                                                ";
				 }
				 else if(addAmountOfChar == 49){
					 returnVal = "                                                 ";
				 }
				 else if(addAmountOfChar == 50){
					 returnVal = "                                                  ";
				 }
				 else{
					 System.out.println("You have reached the else statement in the process, adding whitespace");
				 }
				 
			return returnVal;
		}

		public String makeItemsAlignedAlbum(){
			String returnValue = ""; // The amount of space that will be added
			int howLongIsString = 0; // How Long is string
			int addAmountOfChar = 50; // How much space will be added to the string
			
			// MAX LIMIT OF SPACE WILL BE 50 CHARS PER SPACE ADDITION
			
			// Add space to Songname
				 howLongIsString = ALBUMNAME[x].length(); // See how many chars are in the string
				 addAmountOfChar = addAmountOfChar - howLongIsString; // See how much space needs to be added
				
				 if (addAmountOfChar == 0){
					 returnValue = "";
				 }
				 else if(addAmountOfChar == 1){
					 returnValue = " ";
				 }
				 else if(addAmountOfChar == 2){
					 returnValue = "  ";
				 }
				 else if(addAmountOfChar == 3){
					 returnValue = "   ";
				 }
				 else if(addAmountOfChar == 4){
					 returnValue = "    ";
				 }
				 else if(addAmountOfChar == 5){
					 returnValue = "     ";
				 }
				 else if(addAmountOfChar == 6){
					 returnValue = "      ";
				 }
				 else if(addAmountOfChar == 7){
					 returnValue = "       ";
				 }
				 else if(addAmountOfChar == 8){
					 returnValue = "        ";
				 }
				 else if(addAmountOfChar == 9){
					 returnValue = "         ";
				 }
				 else if(addAmountOfChar == 10){
					 returnValue = "          ";
				 }
				 else if(addAmountOfChar == 11){
					 returnValue = "           ";
				 }
				 else if(addAmountOfChar == 12){
					 returnValue = "            ";
				 }
				 else if(addAmountOfChar == 13){
					 returnValue = "             ";
				 }
				 else if(addAmountOfChar == 14){
					 returnValue = "              ";
				 }
				 else if(addAmountOfChar == 15){
					 returnValue = "               ";
				 }
				 else if(addAmountOfChar == 16){
					 returnValue = "                ";
				 }
				 else if(addAmountOfChar == 17){
					 returnValue = "                 ";
				 }
				 else if(addAmountOfChar == 18){
					 returnValue = "                  ";
				 }
				 else if(addAmountOfChar == 19){
					 returnValue = "                   ";
				 }
				 else if(addAmountOfChar == 20){
					 returnValue = "                    ";
				 }
				 else if(addAmountOfChar == 21){
					 returnValue = "                     ";
				 }
				 else if(addAmountOfChar == 22){
					 returnValue = "                      ";
				 }
				 else if(addAmountOfChar == 23){
					 returnValue = "                       ";
				 }
				 else if(addAmountOfChar == 24){
					 returnValue = "                        ";
				 }
				 else if(addAmountOfChar == 25){
					 returnValue = "                         ";
				 }
				 else if(addAmountOfChar == 26){
					 returnValue = "                          ";
				 }
				 else if(addAmountOfChar == 27){
					 returnValue = "                           ";
				 }
				 else if(addAmountOfChar == 28){
					 returnValue = "                            ";
				 }
				 else if(addAmountOfChar == 29){
					 returnValue = "                             ";
				 }
				 else if(addAmountOfChar == 30){
					 returnValue = "                              ";
				 }
				 else if(addAmountOfChar == 31){
					 returnValue = "                               ";
				 }
				 else if(addAmountOfChar == 32){
					 returnValue = "                                ";
				 }
				 else if(addAmountOfChar == 33){
					 returnValue = "                                 ";
				 }
				 else if(addAmountOfChar == 34){
					 returnValue = "                                  ";
				 }
				 else if(addAmountOfChar == 35){
					 returnValue = "                                   ";
				 }
				 else if(addAmountOfChar == 36){
					 returnValue = "                                    ";
				 }
				 else if(addAmountOfChar == 37){
					 returnValue = "                                     ";
				 }
				 else if(addAmountOfChar == 38){
					 returnValue = "                                      ";
				 }
				 else if(addAmountOfChar == 39){
					 returnValue = "                                       ";
				 }
				 else if(addAmountOfChar == 40){
					 returnValue = "                                        ";
				 }
				 else if(addAmountOfChar == 41){
					 returnValue = "                                         ";
				 }
				 else if(addAmountOfChar == 42){
					 returnValue = "                                          ";
				 }
				 else if(addAmountOfChar == 43){
					 returnValue = "                                           ";
				 }
				 else if(addAmountOfChar == 44){
					 returnValue = "                                            ";
				 }
				 else if(addAmountOfChar == 45){
					 returnValue = "                                             ";
				 }
				 else if(addAmountOfChar == 46){
					 returnValue = "                                              ";
				 }
				 else if(addAmountOfChar == 47){
					 returnValue = "                                               ";
				 }
				 else if(addAmountOfChar == 48){
					 returnValue = "                                                ";
				 }
				 else if(addAmountOfChar == 49){
					 returnValue = "                                                 ";
				 }
				 else if(addAmountOfChar == 50){
					 returnValue = "                                                  ";
				 }
				 else{
					 System.out.println("You have reached the else statement in the process, adding whitespace");
				 }
				 
			return returnValue;
		}
	
	// Display all music in lib by #
	void showMusic(){
		for (int y = 0; y < ARRAYSIZE; y++){
			x = y; // Tell aligning methods what song we're on
			System.out.println(MAXNUMOFSONGS[y] + " " + SONGNAME[y] + makeItemsAligned() + ALBUMNAME[y] + makeItemsAlignedAlbum() + ARTISTNAME[y]);
		}
		mainMenu();
	}
}
