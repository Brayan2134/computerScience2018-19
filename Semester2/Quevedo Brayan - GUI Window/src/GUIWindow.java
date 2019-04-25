/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  4/15/19
 * PURPOSE: Def info in window
 */

import java.awt.event.*;
import javax.swing.*;
import java.awt.*;

/*
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.GridLayout;

import javax.swing.JFrame;
import javax.swing.JPanel;

import java.awt.Color;
*/

public class GUIWindow extends JFrame implements ActionListener{
	
	/*
	 * 
	 * CONSTANTS
	 * 
	 * */
	public final static String OK = "OK";
	public final static String QUIT = "QUIT";
	public final static String CLEAR = "CLEAR";
	public final static String ABOUT = "ABOUT";
	
	
	/*
	 * 
	 * VARIABLES 
	 * 
	 * */
	
	// Globals
	private int x, y, width, height;
	private JPanel north = new JPanel();
	private JPanel south = new JPanel();
	private JPanel east = new JPanel();
	private JPanel west = new JPanel();
	
	// Area where user can type
	private JTextArea textArea = new JTextArea(6, 20);
	
	// Add Scrolling
	private JScrollPane scrollPane = new JScrollPane(textArea);
	
	// Buttons
	private JButton buttonOK = new JButton("OK");
	private JButton buttonClear = new JButton("CLEAR");
	private JButton buttonQuit= new JButton("QUIT");
	
	// Menu Items
	private JMenuBar menuBar = new JMenuBar();
		private JMenu fileMenu = new JMenu("File");
		private JMenu helpMenu = new JMenu("Help");
		
		private JMenuItem newMenuItem = new JMenuItem("New");
		private JMenuItem openMenuItem = new JMenuItem("Open");
		private JMenuItem saveMenuItem = new JMenuItem("Save");
		private JMenuItem quitMenuItem = new JMenuItem("Quit");
		
		private JMenuItem helpMenuItem = new JMenuItem("Help");
		private JMenuItem aboutMenuItem = new JMenuItem("About");
		
	// Images
	private ImageIcon albert = new ImageIcon(getClass().getResource("albert2.jpg"));
	
	/*
	 * 
	 * CONSTRUCTORS 
	 * 
	 * */
	public GUIWindow(){
		super();
		init();
	}
	
	public GUIWindow(String title){
		super(title);
		init();
	}
	
	/*
	 * 
	 * METHODS 
	 * 
	 * */
	
	public void setLocationSize(int x, int y, int width, int height){
		this.x = x;
		this.y = y;
		this.width = width;
		this.height = height;
		
		this.setLocation(x,y);
		this.setSize(width, height);
	}
	
	public void makeVisible(){
		this.setVisible(true);
	}
	
	public void init(){
		Container cp = this.getContentPane();
		north.setBackground(Color.blue);
		west.setBackground(Color.red);
		east.setBackground(Color.yellow);
		south.setBackground(Color.green);
		
		// Set up actions area
		buttonOK.addActionListener(this);
		buttonOK.setActionCommand(OK);
		buttonClear.addActionListener(this);
		buttonClear.setActionCommand(CLEAR);
		
		aboutMenuItem.addActionListener(this);
		aboutMenuItem.setActionCommand(ABOUT);
		
		// Add items to menu
		fileMenu.add(newMenuItem);
		fileMenu.add(openMenuItem);
		fileMenu.add(saveMenuItem);
		fileMenu.add(quitMenuItem);
		
		helpMenu.add(helpMenuItem);
		helpMenu.add(aboutMenuItem);
		
		menuBar.add(fileMenu);
		menuBar.add(helpMenu);
		
		this.setJMenuBar(menuBar);
		
		// cp.setLayout(new GridLayout(2,2));
		
		cp.setLayout(new FlowLayout());
		
		buttonOK.setBackground(Color.orange);
		
		south.add(buttonOK);
		south.add(buttonClear);
		south.add(buttonQuit);
		
		textArea.setLineWrap(true);
		textArea.setWrapStyleWord(true);
		
		//cp.add(textArea);
		cp.add(scrollPane);
		
		cp.add(west);
		cp.add(north);
		cp.add(east);
		cp.add(south);
	}
	
	public void actionPerformed(ActionEvent e){
		String command = e.getActionCommand();
		System.out.println(command);
		textArea.setText(e.toString() + "\n");
		
		if (command == OK){
			textArea.append("YOU SELECTED OK\n");
		}
		else if (command == CLEAR){
			textArea.append("IT IS A CLEAR DAY...\n");
		}
		else if (command == ABOUT){
			String str = "About this application \n";
			str += "Albert Einstein \n";
			str += "Taught at Princeton \n";
			str += "Amd won nobel prize";
			
			JOptionPane.showMessageDialog(this, str, "About", JOptionPane.INFORMATION_MESSAGE, albert);
		}
	}
}