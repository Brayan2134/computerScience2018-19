/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  4/15/19
 * PURPOSE: Def info in window
 */

import java.awt.event.*;

import javax.swing.*;

import java.awt.*;

public class GUIWindow extends JFrame implements ActionListener{
	
	/*
	 * 
	 * CONSTANTS
	 * 
	 * */
	public final static String BUTTON0VALUEMESSAGE = "User has selected: Button 0";
	public final static String BUTTON1VALUEMESSAGE = "User has selected: Button 1";
	public final static String BUTTON2VALUEMESSAGE = "User has selected: Button 2";
	public final static String BUTTON3VALUEMESSAGE = "User has selected: Button 3";
	public final static String BUTTON4VALUEMESSAGE = "User has selected: Button 4";
	public final static String BUTTON5VALUEMESSAGE = "User has selected: Button 5";
	public final static String BUTTON6VALUEMESSAGE = "User has selected: Button 6";
	public final static String BUTTON7VALUEMESSAGE = "User has selected: Button 7";
	public final static String BUTTON8VALUEMESSAGE = "User has selected: Button 8";
	public final static String BUTTON9VALUEMESSAGE = "User has selected: Button 9";
		
	public final static String BUTTONADD = "User has selected: Addition Button";
	public final static String BUTTONSUBTRACT = "User has selected: Subtract Button";
	public final static String BUTTONMULTIPLY = "User has selected: Multiplication Button";
	public final static String BUTTONDEVIDE = "User has selected: Devide Button";
	
	public final static String BUTTONFUNCTION = "User has selected: 'Equals' Button";

	/*
	 * 
	 * 
	 * 
	 * -----------------------------------------------------
	 * **************THE VARS
	 * **************USED IN THE
	 * **************PROGRAM
	 * -----------------------------------------------------
	 * 
	 * 
	 * 
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
	
	// Buttons for calculator
	public JButton button0 = new JButton("0");
	public JButton button1 = new JButton("1");
	public JButton button2 = new JButton("2");
	public JButton button3 = new JButton("3");
	public JButton button4 = new JButton("4");
	public JButton button5 = new JButton("5");
	public JButton button6 = new JButton("6");
	public JButton button7 = new JButton("7");
	public JButton button8 = new JButton("8");
	public JButton button9 = new JButton("9");
	
	// Function buttons for calculator
	public JButton buttonAdd = new JButton("+");
	public JButton buttonSubtract = new JButton("-");
	public JButton buttonDevide = new JButton("/");
	public JButton buttonMultiply = new JButton("*");
	
	// Button to make calc
	public JButton buttonFunction = new JButton("=");
	
	// Operator
	String s0, s1, s2;
	
	// Field
	static JTextField l;
	
	/*
	 * 
	 * ------------------------------------------------------------------
	 * *********************MENU
	 * *********************ITEM
	 * *********************VARIABLE
	 * *********************SECTION
	 * ------------------------------------------------------------------
	 * 
	 * 
	 * 
	 * 
	 * 
	 * */
	
	
	// Menu Items
	private JMenuBar menuBar = new JMenuBar();
		private JMenu settingMenu = new JMenu("General");
		private JMenu functionMenu = new JMenu("Functions");
		private JMenu otherMenu = new JMenu("Other");
		private JMenu helpMenu = new JMenu("HELP ME");
		
		// General Dropdown
		private JMenuItem quitMenuItem = new JMenuItem("Quit");
		
		// Function Dropdown
		private JMenuItem functionListMenuItem = new JMenuItem("Function List");
		private JMenuItem tipListMenuItem = new JMenuItem("Tips");
		
		// Other
		private JMenuItem aboutMenuItem = new JMenuItem("About");
		private JMenuItem faqMenuItem = new JMenuItem("FAQ");
		
		// Help
		private JMenuItem helpMenuItem = new JMenuItem("Help");
		
	// Images
	//private ImageIcon albert = new ImageIcon(getClass().getResource("albert2.jpg"));
	
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
		s0 = s1 = s2 = "";
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
		
		// Set up actions area
		button0.addActionListener(this);
		button0.setActionCommand(BUTTON0VALUEMESSAGE);
		
		button1.addActionListener(this);
		button1.setActionCommand(BUTTON1VALUEMESSAGE);
		
		button2.addActionListener(this);
		button2.setActionCommand(BUTTON2VALUEMESSAGE);
		
		button3.addActionListener(this);
		button3.setActionCommand(BUTTON3VALUEMESSAGE);
		
		button4.addActionListener(this);
		button4.setActionCommand(BUTTON4VALUEMESSAGE);
		
		button5.addActionListener(this);
		button5.setActionCommand(BUTTON5VALUEMESSAGE);
		
		button6.addActionListener(this);
		button6.setActionCommand(BUTTON6VALUEMESSAGE);
		
		button7.addActionListener(this);
		button7.setActionCommand(BUTTON7VALUEMESSAGE);
		
		button8.addActionListener(this);
		button8.setActionCommand(BUTTON8VALUEMESSAGE);
		
		button9.addActionListener(this);
		button9.setActionCommand(BUTTON9VALUEMESSAGE);
		
		buttonAdd.addActionListener(this);
		buttonAdd.setActionCommand(BUTTONADD);
		
		buttonSubtract.addActionListener(this);
		buttonSubtract.setActionCommand(BUTTONSUBTRACT);
		
		buttonMultiply.addActionListener(this);
		buttonMultiply.setActionCommand(BUTTONMULTIPLY);
		
		buttonDevide.addActionListener(this);
		buttonDevide.setActionCommand(BUTTONDEVIDE);
		
		buttonFunction.addActionListener(this);
		buttonFunction.setActionCommand(BUTTONFUNCTION);
		
		
		// Add items to menu
		// General
			settingMenu.add(quitMenuItem);
			
		// Functions
			functionMenu.add(functionListMenuItem);
			
		// Other
			otherMenu.add(aboutMenuItem);
			otherMenu.add(faqMenuItem);
			
		// Help
			helpMenu.add(helpMenuItem);
			
		// Add Menu Objects to menu
			menuBar.add(settingMenu);
			menuBar.add(functionMenu);
			menuBar.add(otherMenu);
			menuBar.add(helpMenu);
		
		// Display Menu	
			this.setJMenuBar(menuBar);
		
		// Layout
			cp.setLayout(new FlowLayout());
		
		// Add text box to top of screen
		l = new JTextField(16);
		l.setEditable(false);
		north.add(l);
		
		// Add int buttons
		south.add(button0);
		south.add(button1);
		south.add(button2);
		south.add(button3);
		south.add(button4);
		south.add(button5);
		south.add(button6);
		south.add(button7);
		south.add(button8);
		south.add(button9);
		
		// Add Function buttons
		south.add(buttonAdd);
		south.add(buttonSubtract);
		south.add(buttonMultiply);
		south.add(buttonDevide);
		south.add(buttonFunction);
		
		textArea.setLineWrap(true);
		textArea.setWrapStyleWord(true);
		
		//cp.add(textArea);
		cp.add(scrollPane);
		cp.add(north);
		cp.add(south);
	}
	
	public void actionPerformed(ActionEvent e){	
		String command = e.getActionCommand();
		System.out.println(command);
		
		// USE EMPTY RULESETS TO ONLY DISPLAY WHATS HAPPENBING ON SCREEN
		if(command == BUTTON0VALUEMESSAGE){}
		else if (command == BUTTON1VALUEMESSAGE){}
		else if (command == BUTTON2VALUEMESSAGE){}
		else if (command == BUTTON3VALUEMESSAGE){}
		else if (command == BUTTON4VALUEMESSAGE){}
		else if (command == BUTTON5VALUEMESSAGE){}
		else if (command == BUTTON6VALUEMESSAGE){}
		else if (command == BUTTON7VALUEMESSAGE){}
		else if (command == BUTTON8VALUEMESSAGE){}
		else if (command == BUTTON9VALUEMESSAGE){}
		else if (command == BUTTONADD){}
		else if (command == BUTTONSUBTRACT){}
		else if (command == BUTTONMULTIPLY){}
		else if (command == BUTTONDEVIDE){}
		else if (command == BUTTONFUNCTION){}
		
		  // if the value is a number 
        if ((command.charAt(0) >= '0' && command.charAt(0) <= '9') || command.charAt(0) == '.') { 
            // if operand is present then add to second no 
            if (!s1.equals("")) 
                s2 = s2 + command; 
            else
                s0 = s0 + command; 
  
            // set the value of text 
            l.setText(s0 + s1 + s2); 
        } 
        else if (command.charAt(0) == 'C') { 
            // clear the one letter 
            s0 = s1 = s2 = ""; 
  
            // set the value of text 
            l.setText(s0 + s1 + s2); 
        } 
        else if (command.charAt(0) == '=') { 
  
            double te; 
  
            // store the value in 1st 
            if (s1.equals("+")) 
                te = (Double.parseDouble(s0) + Double.parseDouble(s2)); 
            else if (s1.equals("-")) 
                te = (Double.parseDouble(s0) - Double.parseDouble(s2)); 
            else if (s1.equals("/")) 
                te = (Double.parseDouble(s0) / Double.parseDouble(s2)); 
            else
                te = (Double.parseDouble(s0) * Double.parseDouble(s2)); 
  
            // set the value of text 
            l.setText(s0 + s1 + s2 + "=" + te); 
  
            // convert it to string 
            s0 = Double.toString(te); 
  
            s1 = s2 = ""; 
        } 
        else { 
            // if there was no operand 
            if (s1.equals("") || s2.equals("")) 
                s1 = command; 
            // else evaluate 
            else { 
                double te; 
  
                // store the value in 1st 
                if (s1.equals("+")) 
                    te = (Double.parseDouble(s0) + Double.parseDouble(s2)); 
                else if (s1.equals("-")) 
                    te = (Double.parseDouble(s0) - Double.parseDouble(s2)); 
                else if (s1.equals("/")) 
                    te = (Double.parseDouble(s0) / Double.parseDouble(s2)); 
                else
                    te = (Double.parseDouble(s0) * Double.parseDouble(s2)); 
  
                // convert it to string 
                s0 = Double.toString(te); 
  
                // place the operator 
                s1 = command; 
  
                // make the operand blank 
                s2 = ""; 
            } 
  
            // set the value of text 
            l.setText(s0 + s1 + s2); 
        } 
    } 
}