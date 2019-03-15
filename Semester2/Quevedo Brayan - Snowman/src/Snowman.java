/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  2/14/2019
 * PURPOSE: To create a static image.
 * 			- Going to use draw, fill, set commands.
 * 			- Change size of window.
 * 			- Include text.
 * 			- Do more than alter the code.
 * 			- Be creative and have fun.
 */

import java.awt.*;
import java.applet.Applet;

public class Snowman extends Applet
{
	public void init()
	{
		resize(400,325);
	}

	public void paint(Graphics box)
	{
		// MAKE A BOAT
		box.setColor(Color.yellow);
		box.fillRect(150, 170, 200, 100); // Make yellow rectangle
		
		box.setColor(Color.black);
		box.fillRect(150, 70, 20, 100); // Smaller rectangle/pole
		
		box.drawString("LET'S GO OUT FOR A RIDE!", 55, 70); // Draw string on top of flag
		
		box.setColor(Color.blue);
		box.fillRect(70, 70, 120, 60); // Make flag (on top of the pole)
		
		box.setColor(Color.gray);
		box.fillOval(80, 70, 100, 60); // Make the oval (that goes on the flag)
		
		box.setColor(Color.CYAN);
		box.fillRoundRect(105, 90, 50, 20, 20, 20); // Make the oval that goes inside the grey oval
		
		
		final int MID = 250;
		final int TOP = 50;
		
		setBackground (Color.green);
		
		// The ground
		box.setColor (Color.blue);
		box.fillRect (0,275,400,300); // Top line of color (of ocean)
		
		Color myRed = new Color(128,0,0); // Create a shade of red
		box.setColor(myRed); // Initl
		box.fillRect(0, 300, 400, 325); // Second bottom global color 
		
		Color myPurpleBlue = new Color(36, 41, 117); // Create a dark shade of blue
		box.setColor(myPurpleBlue); // Initl 
		box.fillRect(0, 275, 75, 325);
		
		
		Color myMatBlack = new Color(24, 24, 24); // Make a mat black color
		box.setColor(myMatBlack); // initl
		box.fillRect(325, 275, 400, 325); // Create side side black space
		
		
		box.setColor (Color.white);
		box.fillOval (-40, -40, 80,80); // Moon
		
		// Make lines coming out from the moon
		box.drawLine(30, 30, 40, 40);
		box.drawLine(20, 40, 30, 50);
		
		box.setColor (Color.white);
		box.fillOval (MID-20, TOP, 40, 40);  //head
		box.fillOval (MID-35, TOP+35, 70, 50);  //upper torso
		box.fillOval (MID-50, TOP+80, 100, 60);  //lower torso
		
		
		box.setColor (Color.black);
		box.fillOval (MID-10, TOP+10, 5,5);  //left eye
		box.fillOval (MID+5, TOP+10, 5, 5);  //right eye
		
		box.drawArc (MID-10, TOP+20, 20, 10, 190, 160);  //smile
		
		box.drawLine (MID-25, TOP+60, MID-50, TOP+40);  //left arm
		box.drawLine (MID+25, TOP+60, MID+55, TOP+60);  //right arm
		
		box.drawLine (MID-20, TOP+5, MID+20, TOP+5);  //brim of hat
		box.fillRect (MID-15, TOP-20, 30,25);			//top of hat
		
		box.setColor(Color.green);
		box.drawString("Even the pinguins have technology! - Brayan Quevedo Ramos", 30, 305); // PLACE AT END SO THAT THE TEXT IS ABOVE THE BOX
		
	}
}

