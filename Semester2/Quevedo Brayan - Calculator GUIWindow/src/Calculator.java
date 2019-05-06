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
	private JMenuItem copy;
	private JMenuItem view;
	private JMenuItem about;
	
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
	
	private double tempFirst = 0.0;
	
	public static void main(String[] args) {
		// System theme
		try {
			UIManager.setLookAndFeel(UIManager.getCrossPlatformLookAndFeelClassName());
		}catch(Exception e) {
			System.out.println("Could not load System look.");
		}
		new Calculator(); // Instance
	}
	
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
				display.append("/");
				System.out.println("Division Button is dividing by: " + tempFirst);
			}
		});
		add(division);
		
		multiplication = new JButton("*");
		multiplication.setBounds(226, 132, 65, 55);
		add(multiplication);
		
		subtraction = new JButton("-");
		subtraction.setBounds(226, 194, 65, 55);
		add(subtraction);
		
		addition = new JButton("+");
		addition.setBounds(226, 256, 65, 55);
		add(addition);
		
		clear = new JButton("Clear");
		clear.setBounds(154, 318, 137, 55);
		clear.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				display.setText("0");
			}
		});
		add(clear);
		
		equals = new JButton("=");
		equals.setBounds(10,318, 137, 55);
		add(equals);
		
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
		file = new JMenu(" File ");
		edit = new JMenu(" Edit ");
		help = new JMenu(" Help ");
		close = new JMenuItem("Close");
		copy = new JMenuItem("Copy");
		view = new JMenuItem("View Help");
		about = new JMenuItem("About App");
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
				JOptionPane.showMessageDialog(null,"Made By Brayan Quevedo, 2019", "Copyright", JOptionPane.OK_OPTION);
			}
		});
		
		file.add(close);
		edit.add(copy);
		help.add(view);
		help.add(about);
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
