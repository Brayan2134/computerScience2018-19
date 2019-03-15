/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  2/11/2019
 * PURPOSE: To learn how Java does math.
 */

class Arithmetic {
	public static void main(String[] args) {
		int num1 = 87;
		int num2 = 19;
		int sum = num1 + num2;
		int difference = num2 - num1;
		int prod = num1 * num2;
		double quot = (double)num1/num2;
		int myst = num1 % num2;
				
		// Also find the difference, product, quotient for num 1 and num 2
		// And display answers.
		// USE INT FOR ALL VARS
		
		System.out.println(num1 + " + " + num2 + " = " + sum);		
		System.out.println("The difference between the two numbers is: " + difference);
		System.out.println("The product is: " + prod);		
		System.out.println("The quot is: " + quot);
		System.out.println("The remainder is: " + myst);
		
		double dub1 = 23.222;
		double dub2 = -78.783;
		
		// Finds hypo of right trig
		System.out.println(Math.hypot(dub1, dub2));
	
		float float1 = (float) 454.14654;
		float float2 = (float) 7892.5445;
		
		//Remainder of 2 floats
		System.out.println(Math.IEEEremainder(float1, float2));
		
		//Rounds Number
		System.out.println(Math.round(float1));
		
		//SQRT Number
		System.out.println(Math.sqrt(dub1));
		
		int a = 5;
		System.out.println(a);
		a++;
		System.out.println(a);
		
		a += 10;
		System.out.println(a);
	}
}