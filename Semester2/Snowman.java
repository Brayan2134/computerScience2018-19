/*
// Name:  Mr. Rodin
// Class: Computer Science 2
// Date:  Feb 23, 2009
//
// Purpose:  To introduce the basic drawing methods and use of colors;
//
*/
import java.awt.*;
import java.applet.Applet;

public class Snowman extends Applet
{
	public void init()
	{
		resize(300,225);
	}

	public void paint(Graphics box)
	{
		final int MID = 150;
		final int TOP = 50;
		
		setBackground (Color.cyan);
		
		box.setColor (Color.blue);
		box.fillRect (0,175,300,50);  //ground
		
		box.setColor (Color.yellow);
		box.fillOval (-40, -40, 80,80); //sun
		
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
		
		
	}
}


