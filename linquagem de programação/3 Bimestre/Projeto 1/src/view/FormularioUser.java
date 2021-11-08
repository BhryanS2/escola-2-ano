package view;

import java.awt.EventQueue;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.Toolkit;

import javax.swing.*;
import java.awt.event.*;

public class FormularioUser {

	private JFrame frame;
	private JTextField txtNome;
	private JTextField txtIdade;
	private JTextField txtSexo;
	private JTextField txtCidade;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FormularioUser window = new FormularioUser();
					window.frame.setVisible(true);

				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public FormularioUser() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
		Integer width = (int) screenSize.getWidth() / 2;
		Integer height = (int) screenSize.getHeight() / 2;
		Integer widthElement = 351;
		int WIDTH = (width / 2) - (widthElement / 2);
		int HEIGHT = 25;
		int POSITION = 30;
		int COLUMNS = 10;

		JLabel lblNome = new JLabel("Nome");
		JLabel lblSexo = new JLabel("Sexo");
		JLabel lblIdade = new JLabel("Idade");
		JLabel lblCiadade = new JLabel("Ciadade");

		JButton btnEnviar = new JButton("Enviar");

		txtNome = new JTextField();
		txtIdade = new JTextField();
		txtSexo = new JTextField();
		txtCidade = new JTextField();

		frame = new JFrame();
		frame.setBounds(100, 100, width, height);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		lblNome.setBounds(WIDTH, POSITION, widthElement, HEIGHT);
		txtNome.setBounds(WIDTH, POSITION * 2, widthElement, HEIGHT);

		lblIdade.setBounds(WIDTH, POSITION * 3, widthElement, HEIGHT);
		txtIdade.setBounds(WIDTH, POSITION * 4, widthElement, HEIGHT);

		lblSexo.setBounds(WIDTH, POSITION * 5, widthElement, HEIGHT);
		txtSexo.setBounds(WIDTH, POSITION * 6, widthElement, HEIGHT);

		lblCiadade.setBounds(WIDTH, POSITION * 7, widthElement, HEIGHT);
		txtCidade.setBounds(WIDTH, POSITION * 8, widthElement, HEIGHT);

		btnEnviar.setBounds((width / 2) - (100 / 2), POSITION * 10, 100, HEIGHT);

		txtNome.setColumns(COLUMNS);
		txtIdade.setColumns(COLUMNS);
		txtSexo.setColumns(COLUMNS);
		txtCidade.setColumns(COLUMNS);
		Container contentFrame = frame.getContentPane();
		contentFrame.setLayout(null);
		contentFrame.add(lblCiadade);
		contentFrame.add(txtNome);
		contentFrame.add(txtIdade);
		contentFrame.add(txtSexo);
		contentFrame.add(txtCidade);
		contentFrame.add(btnEnviar);
		contentFrame.add(lblNome);
		contentFrame.add(lblIdade);
		contentFrame.add(lblSexo);

		btnEnviar.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				String Sexo = txtSexo.getText();
				Sexo = Sexo.equals("feminino") ? "Mulher" : "Homem";

				String[] fieldsArray = { txtNome.getText(), txtIdade.getText(), Sexo, txtCidade.getText() };
				boolean ok = FieldsNotNull(fieldsArray);

				Integer idade = Integer.parseInt(txtIdade.getText());

				String messageSuccess = fieldsArray[0] + " tem " + idade + " ano(s) " + ", é " + fieldsArray[2] + " e mora em "
						+ fieldsArray[3];
				String messageFail = "Digite dados válidos!";
				JOptionPane.showMessageDialog(null, ok ? messageSuccess : messageFail);
			}
		});
	}

	public boolean FieldsNotNull(String[] arr) {
		boolean ok = true;
		for (int i = 0; i < arr.length; i++) {
			if (arr[i] == "")
				ok = false;
		}
		return ok;
	}
}
