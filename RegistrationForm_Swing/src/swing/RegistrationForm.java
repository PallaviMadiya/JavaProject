package swing;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JRadioButton;
import javax.swing.JTextField;

class RegistrationForm {
	JButton exit, register,delete, update, reset;
	JLabel title,l1, l2, l3, l4, l5, l6, l7;
	JTextField id, name, address, contact;
	JRadioButton female, male;
	
	public RegistrationForm() {
		JFrame fr = new JFrame("Registration Form");
		fr.setVisible(true);
		fr.setSize(700, 500);
		fr.setLayout(null);
		
		title = new JLabel("Registration Form");
		title.setBounds(70, 20, 120, 20);
		fr.add(title);
		
		l1 = new JLabel("ID");
		l1.setBounds(20, 100, 30, 20);
		fr.add(l1);
		
		l2 = new JLabel("Name");
		l2.setBounds(20, 140, 50, 20);
		fr.add(l2);
		
		l3 = new JLabel("Gender");
		l3.setBounds(20, 180, 50, 20);
		fr.add(l3); 	
		
		l4 = new JLabel("Address");
		l4.setBounds(20, 220, 50, 20);
		fr.add(l4);
		
		l5 = new JLabel("Contact");
		l5.setBounds(20, 260, 50, 20);
		fr.add(l5);

		id = new JTextField();
		id.setBounds(100, 100, 120, 20);
		fr.add(id);

		name = new JTextField();
		name.setBounds(100, 140, 120, 20);
		fr.add(name);
		
		male = new JRadioButton();
		male.setBounds(100, 180, 30, 20);
		fr.add(male);
		
		l6 = new JLabel();
		l6.setBounds(100, 180, 50, 20);
		fr.add(l6);
		
	
	
	}
	public static void main(String args[]) {
		new RegistrationForm();
	}
}	
