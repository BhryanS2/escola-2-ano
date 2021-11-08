package view;

import java.awt.EventQueue;

import javax.swing.*;
import java.awt.event.*;

public class View {

	private JFrame frame;
	private JTextField NomeProduto;
	private JTextField DrecricaoProduto;
	private JTextField ValorProduto;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					View window = new View();
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
	public View() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		Integer width = 800;
		int WIDTH = (400 / 2) - (400 / 2);
		int POSITION = 30;
		int COLUMNS = 10;

		JLabel lblProduto = new JLabel("Nome do produto");
		JLabel lblDescricao = new JLabel("Descrição do produto");
		JLabel lblValor = new JLabel("Valor");
		JButton btnEnviar = new JButton("Enviar");

		NomeProduto = new JTextField();
		DrecricaoProduto = new JTextField();
		ValorProduto = new JTextField();

		lblProduto.setBounds(WIDTH, POSITION, 400, 25);
		NomeProduto.setBounds(WIDTH, POSITION * 2, 400, 25);

		lblDescricao.setBounds(WIDTH, POSITION * 3, 400, 25);
		DrecricaoProduto.setBounds(WIDTH, POSITION * 4, 400, 25);

		lblValor.setBounds(WIDTH, POSITION * 5, 400, 25);
		ValorProduto.setBounds(WIDTH, POSITION * 6, 400, 25);

		btnEnviar.setBounds(WIDTH, POSITION * 8, 400, 25);

		NomeProduto.setColumns(COLUMNS);
		DrecricaoProduto.setColumns(COLUMNS);
		ValorProduto.setColumns(COLUMNS);

		frame = new JFrame();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		frame.setBounds(100, 100, width, 25);

		frame.getContentPane().setLayout(null);
		frame.getContentPane().add(lblProduto);
		frame.getContentPane().add(NomeProduto);
		frame.getContentPane().add(lblDescricao);
		frame.getContentPane().add(DrecricaoProduto);
		frame.getContentPane().add(lblValor);
		frame.getContentPane().add(ValorProduto);
		frame.getContentPane().add(btnEnviar);

		btnEnviar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String nomeProduto = NomeProduto.getText();
				String descricaoProduto = DrecricaoProduto.getText();
				String valorProduto = ValorProduto.getText();
				String[] produto = { nomeProduto, descricaoProduto, valorProduto };
				boolean fieldsValids = FieldsValids(produto);
				if (fieldsValids) {
					Double valor = getValor(valorProduto);
					String messageSuccess = "Nome do produto: " + nomeProduto + "\nDescrição do produto: " + descricaoProduto
							+ "\nValor do produto: " + valor;
					JOptionPane.showMessageDialog(null, messageSuccess);
				} else {
					String messageError = "Preencha todos os campos";
					JOptionPane.showMessageDialog(null, messageError);
				}
			}
		});
	}

	private Double getValor(String valorProduto) {
		if (valorProduto.contains(",")) {
			String res = valorProduto.replace(",", ".").replace(" ", "").replace("R$", "");
			return Double.parseDouble(res);
		}
		String res = valorProduto.replace(" ", "").replace("R$", "");
		return Double.parseDouble(res);
	}

	private Boolean FieldsValids(String[] fields) {
		for (String field : fields) {
			if (field.isEmpty()) {
				return false;
			}
		}
		return true;
	}
}
