/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  3/11/19
 * PURPOSE: To create another Applet.
 * 			To look at random
 * 			To look at conditional objects.
 * 
 * PROJECT: Change window Size - Done
 * 			Change constants - Done
 * 			Change shapes and colors (text?)
 * 			Don't make num boxes too large
 * 			
 */

import java.awt.*;
import java.applet.Applet;
import java.util.Random;

public class Boxes extends Applet{
	
	// Window
	public void init(){
		resize(500, 500);
	}
	
	public void paint(Graphics page){
		final int NUM_BOXES = 125;
		final int THICKNESS = 8; 
		final int MAX_SIDE = 50, MAX_X = 500, MAX_Y = 500;
		
		int x, y, width, height;
		
		// Background Color
		Color customBG = new Color(125,125,125);
		setBackground(customBG);
		Random generator = new Random();
		
		for (int count = 0; count < NUM_BOXES; count++){
			x = generator.nextInt(MAX_X) + 1;
			y = generator.nextInt(MAX_Y) + 1;
			
			width = generator.nextInt(MAX_SIDE) + 1;
			height = generator.nextInt(MAX_SIDE) + 1;
			if (width <= THICKNESS){
				page.setColor(Color.red);
				page.drawOval(x, y, width, height);
				
				page.setColor(Color.BLACK);
				page.drawOval(x + 22, y + 62, width + 55, height - 22);
			}
			else if (height <= THICKNESS){
				page.setColor(Color.blue);
				page.fillRect(x, y, width, height);
				
				page.setColor(Color.green);
				page.drawRect(x, 100, width, 250);
			}
			else{
				page.setColor(Color.white);
				page.drawRect(x, y, width, height);
				
				page.setColor(Color.red);
				String tempString = "Hello my name'S BRAYANBN!";
				page.drawString(tempString, x, y);
				
				page.setColor(Color.YELLOW);
				page.drawString("Welcome to CS2!", 50, y - 25);
			}
		}
	}
}
