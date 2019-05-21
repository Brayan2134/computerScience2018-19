import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.awt.event.*;
import javax.swing.*;

public class Calculator extends JFrame{

	private static final long serialVersionUID = -1415422854830572413L;
	
	private JMenuBar menuBar;
	private JMenu file;
	private JMenu edit;
	private JMenu help;
	
	private JMenuItem close;
	private JMenuItem howToUse;
	private JMenuItem feedback;

	private JMenuItem copy;
	private JMenuItem clearOperation;
	private JMenuItem paste;
	
	private JMenuItem view;
	private JMenuItem about;
	private JMenuItem copyright;
	
	private JTextArea display;
	
	private JButton zero;
	private JButton decimal;
	private JButton posneg;
	private JButton one;
	private JButton two;
	private JButton three;
	private JButton four;
	private JButton five;
	private JButton six;
	private JButton seven;
	private JButton eight;
	private JButton nine;
	
	private JButton clear;
	private JButton equals;
	
	private JButton addition;
	private JButton subtraction;
	private JButton division;
	private JButton multiplication;
	
	private JButton quitProgram;
	
	private double tempFirst = 0.0;
	
	private boolean[] operation = new boolean[4];
	
	// Build Calc
	public Calculator() {
		super("Calculator");
		sendMenuBar();
		sendDisplay();
		sendButtons();
		sendUI(this);
		System.out.println("Program has been loaded and ready to go!");
	}
	
	private void sendButtons() {
		division = new JButton("/");
		division.setBounds(226, 70, 65, 55);
		division.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				setTempFirst(Double.parseDouble(display.getText()));
				display.setText("0");
				operation[0] = true;
				System.out.println("Division Button is dividing by: " + tempFirst);
			}
		});
		add(division);
		
		multiplication = new JButton("*");
		multiplication.setBounds(226, 132, 65, 55);
		multiplication.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				setTempFirst(Double.parseDouble(display.getText()));
				display.setText("0");
				operation[1] = true;
				System.out.println("Division Button is multiplying by: " + tempFirst);
			}
		});
		add(multiplication);
		
		subtraction = new JButton("-");
		subtraction.setBounds(226, 194, 65, 55);
		subtraction.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				setTempFirst(Double.parseDouble(display.getText()));
				display.setText("0");
				operation[2] = true;
				System.out.println("Division Button is subtracting by: " + tempFirst);
			}
		});
		add(subtraction);
		
		addition = new JButton("+");
		addition.setBounds(226, 256, 65, 55);
		addition.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				setTempFirst(Double.parseDouble(display.getText()));
				display.setText("0");
				operation[3] = true;
				System.out.println("Division Button is multiplying by: " + tempFirst);
			}
		});
		add(addition);
		
		clear = new JButton("Clear");
		clear.setBounds(154, 318, 137, 55);
		clear.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				display.setText("0");
				setTempFirst(0.0);
				for (int i = 0; i <= 3; i++){
					operation[i] = false;
				}
			}
		});
		add(clear);
		
		equals = new JButton("=");
		equals.setBounds(10,318, 65, 55);
		equals.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				if (operation[0]) {
					display.setText(Double.toString(tempFirst / Double.parseDouble(display.getText())));
				}
				else if (operation[1]){
					display.setText(Double.toString(tempFirst * Double.parseDouble(display.getText())));
				}
				else if (operation[2]){
					display.setText(Double.toString(tempFirst - Double.parseDouble(display.getText())));
				}
				else if (operation[3]){
					display.setText(Double.toString(tempFirst + Double.parseDouble(display.getText())));
				}
				if(display.getText().endsWith(".0")) {
					display.setText(display.getText().replace(".0", ""));
					setTempFirst(0.0);
					for (int i = 0; i <= 3; i++){
						operation[i] = false;
					}		
				}
			}
		});
		add(equals);
		
		quitProgram = new JButton("Quit");
		quitProgram.setBounds(82, 318, 65, 55);
		quitProgram.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				System.exit(0);
			}
		});
		add(quitProgram);
		
		zero = new JButton("0");
		zero.setBounds(10, 256, 65, 55);
		zero.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if (display.getText().length() > 10)
					return;
				if (display.getText().equalsIgnoreCase("0")){
					display.setText("0");
					return;
				}
				display.append("0");
				System.out.println("User has selected: Button 0");
			}
		});
		add(zero);
		
		decimal = new JButton(".");
		decimal.setBounds(82, 256, 65, 55);
		decimal.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if (display.getText().contains(".")) {
					return;
				}
				display.append(".");
				System.out.println("User has selected: Button Decimal(.)");
			}
		});
		add(decimal);
		
		posneg = new JButton("+/-");
		posneg.setBounds(154, 256, 65, 55);
		posneg.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if (display.getText().equalsIgnoreCase("0")) {
					return;
				}
				display.setText(Double.toString(Double.parseDouble(display.getText()) * (-1)));
				if (display.getText().endsWith(".0"))
					display.setText(display.getText().replace(".0", ""));
			}
		});
		System.out.println("User has selected: +/- Button");
		add(posneg);
		
		one = new JButton("1");
		one.setBounds(10, 194, 65, 55);
		one.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if (display.getText().length() > 10)
					return;
				if (display.getText().equalsIgnoreCase("0")){
					display.setText("1");
					return;
				}
				display.append("1");
				System.out.println("User has selected: Button 1");
			}
		});
		add(one);
		
		two = new JButton("2");
		two.setBounds(82, 194, 65, 55);
		two.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if (display.getText().length() > 10)
					return;
				if (display.getText().equalsIgnoreCase("0")){
					display.setText("2");
					return;
				}
				display.append("2");
				System.out.println("User has selected: Button 2");
			}
		});
		add(two);
		
		three = new JButton("3");
		three.setBounds(154, 194, 65, 55);
		three.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if (display.getText().length() > 10)
					return;
				if (display.getText().equalsIgnoreCase("0")){
					display.setText("3");
					return;
				}
				display.append("3");
				System.out.println("User has selected: Button 3");
			}
		});
		add(three);
		
		four = new JButton("4");
		four.setBounds(10, 132, 65, 55);
		four.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if (display.getText().length() > 10)
					return;
				if (display.getText().equalsIgnoreCase("0")){
					display.setText("4");
					return;
				}
				display.append("4");
				System.out.println("User has selected: Button 4");
			}
		});
		add(four);
		
		five = new JButton("5");
		five.setBounds(82, 132, 65, 55);
		five.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if (display.getText().length() > 10)
					return;
				if (display.getText().equalsIgnoreCase("0")){
					display.setText("5");
					return;
				}
				display.append("5");
				System.out.println("User has selected: Button 5");
			}
		});
		add(five);
		
		six = new JButton("6");
		six.setBounds(154, 132, 65, 55);
		six.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if (display.getText().length() > 10)
					return;
				if (display.getText().equalsIgnoreCase("0")){
					display.setText("6");
					return;
				}
				display.append("6");
				System.out.println("User has selected: Button 6");
			}
		});
		add(six);
		
		seven  = new JButton("7");
		seven.setBounds(10, 70, 65, 55);
		seven.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if (display.getText().length() > 10)
					return;
				if (display.getText().equalsIgnoreCase("0")){
					display.setText("7");
					return;
				}
				display.append("7");
				System.out.println("User has selected: Button 7");
			}
		});
		add(seven);
		
		eight = new JButton("8");
		eight.setBounds(82, 70, 65, 55);
		eight.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if (display.getText().length() > 10)
					return;
				if (display.getText().equalsIgnoreCase("0")) {
					display.setText("8");
					return;
				}
				display.append("8");
				System.out.println("User has selected: Button 8");
			}
		});
		add(eight);
		
		nine = new JButton("9");
		nine.setBounds(154, 70, 65, 55);
		nine.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if (display.getText().length() > 10)
					return;
				if (display.getText().equalsIgnoreCase("0")) {
					display.setText("9");
					return;
				}
			display.append("9");	
			System.out.println("User has selected: Button 9");
			}
		});
		add(nine);
		
	}

	private void sendDisplay() {
		display = new JTextArea("0");
		display.setBounds(10, 10, 280, 45);
		display.setEditable(false);
		display.setFont(new Font("Ariel", Font.PLAIN, 30));
		add(display);
		System.out.println("Display has been loaded!");
	}

	// Menu
	private void sendMenuBar() {
		menuBar = new JMenuBar();
		file = new JMenu(" Main ");
		edit = new JMenu(" Edit ");
		help = new JMenu(" Help ");
		
		close = new JMenuItem("Close");
		howToUse = new JMenuItem("How to use");
		feedback = new JMenuItem("Feedback");
		
		copy = new JMenuItem("Copy");
		clearOperation = new JMenuItem("Clear Operation");
		paste = new JMenuItem("Paste");
		
		view = new JMenuItem("View Help");
		about = new JMenuItem("About App");
		copyright = new JMenuItem("Copyright");
		setJMenuBar(menuBar);
		menuBar.add(file);
		menuBar.add(edit);
		menuBar.add(help);
		
		// Close button, closes and dumps data.
		close.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				System.out.println("The user has exited the program");
				System.out.println("THE PROGRAM HAS BEN TERMINATED");
				System.exit(0);
			}
		});
		
		howToUse.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(null,"1) Click numbers. 2) Click operator. 3) Click equals button. 4) Press clear to begin again.", "Instructions", JOptionPane.OK_OPTION);
				System.out.println("The user has clicked the view button");
			}
		});
		
		feedback.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				try{

					String command = "C:\\Program Files\\Internet Explorer\\IEXPLORE.EXE https://github.com/Brayan2134/computerScience2018-19" ;

					Process link = Runtime.getRuntime().exec(command);
					}
					catch(Exception ex){
					System.out.println("cannot execute command. " +ex);
					}
				JOptionPane.showMessageDialog(null,"Please send any issues to the git repo: https://github.com/Brayan2134/computerScience2018-19/issues", "Feedback", JOptionPane.OK_OPTION);
			}
		});
		
		// Copy whatever's on the display
		copy.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				String tempDisplay = display.getText();
				StringSelection string = new StringSelection(tempDisplay);
				Clipboard system = Toolkit.getDefaultToolkit().getSystemClipboard();
				system.setContents(string, string);
				System.out.println("Clipboard has been copied");
			}
		});
		
		view.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(null,"There are currently no help topics to view", "Calculator Help", JOptionPane.OK_OPTION);
				System.out.println("The user has clicked the view button");
			}
		});
		
		about.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(null,"This is a calculator made for the simple operations in life.", "About", JOptionPane.OK_OPTION);
			}
		});
		
		copyright.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(null,"Made By Brayan Quevedo, 2019", "Copyright", JOptionPane.OK_OPTION);
			}
		});
		
		paste.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(null,"SORRY! This is a work in progress...", "We're sorry :(", JOptionPane.OK_OPTION);
			}
		});
		
		clearOperation.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				display.setText("0");
				setTempFirst(0.0);
				for (int i = 0; i <= 3; i++){
					operation[i] = false;
				}
			}
		});
		
		file.add(close);
		file.add(howToUse);
		file.add(feedback);
		edit.add(copy);
		edit.add(clearOperation);
		edit.add(paste);
		help.add(view);
		help.add(about);
		help.add(copyright);
	}
	
	// Program settings
	private void sendUI(Calculator app) {
		System.out.println("Program settings are starting...");
		app.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		app.setSize(308, 430);
		app.setResizable(false);
		app.setLayout(null);
		app.setLocationRelativeTo(null);
		app.setVisible(true);
		System.out.println("Program settings have been set!");
	}

	public double getTempFirst() {
		return tempFirst;
	}

	public void setTempFirst(double tempFirst) {
		this.tempFirst = tempFirst;
	}
}
