/*   NAME:  Mr Rodin
 *   CLASS: Computer Science 2
 *   DATE:  Jan 29 ,2019
 *
 *   PURPOSE:  
 *
 */
import cs1.Keyboard;

public class Main {

	public static void main(String[] args) {
		//Address info = new Address();
		//info.first = "Philip";
		
		/*Address info = new Address("Philip", "Rodin", 51, 'M');
		System.out.println(info.toString());
		Address info2 = new Address("Minnie", "Mouse", 85, 'F');
		System.out.println(info2.toString());
		
		Address info3 = new Address("John", "Deere", 147, 'M');
		System.out.println(info3.toString());*/
		
		//create a stack of notecards
		ArrayAddress stack = new ArrayAddress();
		
		// "hardcode" some notecards
		stack.addAddress("Philipwwwwwwwwwwwwwwwwwwwwwwww", "Rodin", 51, 'M');
		stack.addAddress("John", "Deere", 147, 'M');
		stack.addAddress("Betty", "Boop", 87, 'F');
		stack.addAddress("Susie", "White", 58, 'F');
		
		//display the information
		System.out.println(stack);
		
		char opt = 'Y';
		
		do{
		//add another notecard
		System.out.print("First name: ");
		String fName = Keyboard.readString();
		System.out.print("Last name: ");
		String lName = Keyboard.readString();
		System.out.print("Age: ");
		int years = Keyboard.readInt();
		System.out.print("Gender: ");
		char gend = Keyboard.readChar();
		
		stack.addAddress(fName, lName, years, gend);
		
		System.out.println(stack);
		
		System.out.println("Do you want to add another? (Y/N) ");
		opt = Keyboard.readChar();
		
		}while(opt == 'Y' || opt == 'y');
		
		

	}

}
