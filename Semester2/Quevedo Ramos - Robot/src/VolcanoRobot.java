/*
 * NAME: Brayan Quevedo Ramos
 * CLASS: Computer Science 2
 * DATE:  2/7/19
 * PURPOSE: To create a class and create objects.
 */



public class VolcanoRobot {

	// Create data/attributes
	String status;
	int speed;
	float temperature;
	
	// Create behaviours/actions
	void checkTemperature(){
		if (temperature > 660){
			status = "returning home...";
			speed = 5;
		}
	}
	
	void showAttributes(){
		System.out.println("Status: " + status);
		System.out.println("Speed: " + speed);
		System.out.println("Temp: " + temperature);
	}
	
	// Write main method	
	public static void main(String[] args) {
		VolcanoRobot dante = new VolcanoRobot();
		dante.speed = 2;
		dante.temperature = 510;
		dante.status = "Exploring...";
		
		dante.showAttributes();
		
		System.out.println("Increase speed -> 4");
		dante.speed = 4;
		dante.showAttributes();
		
		System.out.println("Increase tempature -> 700");
		dante.temperature = 700;
		
		dante.checkTemperature();
		dante.showAttributes();
		
		VolcanoRobot spock = new VolcanoRobot();
		spock.speed  = 1;
		spock.status = "Survey...";
		spock.temperature = 410;
		spock.showAttributes();
	}
}