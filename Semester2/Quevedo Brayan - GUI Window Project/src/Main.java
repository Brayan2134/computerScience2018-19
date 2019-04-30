/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  4/15/19
 * PURPOSE: Learn how to program a graphical UI
 */
public class Main{
	public static void main(String[] args) {
		
		GUIWindow win = new GUIWindow("Calculator Pro Free");
		win.setLocationSize(30, 30, 500, 500);
		win.makeVisible();
		win.setDefaultCloseOperation(GUIWindow.EXIT_ON_CLOSE);
	}
}