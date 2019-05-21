import javax.swing.UIManager;

public class Main {

	public static void main(String[] args) {
		// System theme
		try {
			UIManager.setLookAndFeel(UIManager.getCrossPlatformLookAndFeelClassName());
		}catch(Exception e) {
			System.out.println("Could not load System look.");
		}
		Calculator Main = new Calculator();
	}
}