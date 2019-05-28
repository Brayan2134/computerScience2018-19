/*
 * Author: RODIN_PHILIP
 * Created: Thursday, May 13, 2010 2:31:04 PM
 * Modified: Thursday, May 13, 2010 2:31:04 PM
 */


public class ArrayAddress
{
	
	//variables
	private Address[] collection;
	private int count;
		
	// constructor -- initializes the collection of Address
	public ArrayAddress()
	{
		collection = new Address[100];
		count = 0;		
	}
	
	//adds Address to your collection
	public void addAddress (String name1, String name2, int exp, char gend)
	{
		if (count == collection.length)
			increaseSize();
		
		collection[count] = new Address (name1,name2,exp,gend);
		count++;
	}
	
	//returns a report describing the Address collection
	public String toString()
	{
		//NumberFormat fmt = NumberFormat.getCurrencyInstance();
		String report = "******************************************************\n";
		report += "My Address Collections\n\n";
		report += "Number of People:  " + count + "\n";
		report += "\n\nAddress Book: \n\n";
		
		for (int person =0; person < count; person++)
			report += collection[person].toString() + "\n";
		
		return report;
	}
	
	//  doubles the size of the array - makes a new array - copies data into it.
	private void increaseSize()
	{
		Address[] temp = new Address[collection.length * 2];
		for (int person = 0;  person < collection.length; person++)
				temp[person] = collection[person];
			
		collection = temp;
	}

}
