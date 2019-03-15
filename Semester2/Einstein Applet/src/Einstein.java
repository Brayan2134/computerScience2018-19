/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  2/14/2019
 * PURPOSE: Introduce applets. 
 */

import java.awt.*;

public class Einstein extends java.applet.Applet {
		
	public void init(){
		resize(300, 300);
	}
	
	public void paint(Graphics g){
		g.drawRect(50, 50, 40, 40);
		g.drawRect(60, 80, 225, 30);
		g.drawOval(75, 65, 20, 20);
		g.drawLine(35, 60, 100, 120);
		
		g.drawString("Out if clutter, find simplicity", 110, 70);
		g.drawString(" - Albert Eintein", 130, 100);
	}
}