package swing;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JRadioButton;
import javax.swing.JTextField;

public class Form {

	JButton exit, register,delete, update, reset;
	JLabel title,l1, l2, l3, l4, l5, l6, l7;
	JTextField id, name, address, contact;
	JRadioButton female, male;
	
	public Form() {
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
		
		id = new JTextField();
		id.setBounds(60, 130, 120, 20);
		fr.add(id);
	}
	public static void main(String srga[]) {
		new Form();
	}
}
