package view;

import java.awt.EventQueue;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import java.awt.Color;
import javax.swing.SwingConstants;
import java.awt.Font;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class Product {
  private JFrame frame;
  private JTextField txtName;
  private JTextField txtDescripion;
  private JTextField txtValue;

  public static void main(String[] args) {
    EventQueue.invokeLater(new Runnable() {
      public void run() {
        try {
          Product window = new Product();
          window.frame.setVisible(true);
        } catch (Exception e) {
          e.printStackTrace();
        }
      }
    });
  }

  public Product() {
    initialize();
  }

  private void initialize() {
    frame = new JFrame();
    frame.setBounds(100, 100, 500, 400);
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    frame.getContentPane().setLayout(null);

    JLabel Title = new JLabel("Produtos");
    Title.setFont(new Font("Arial", Font.BOLD, 24));
    Title.setHorizontalAlignment(SwingConstants.CENTER);
    Title.setForeground(new Color(0, 0, 0));
    Title.setBackground(Color.WHITE);
    Title.setBounds(125, 10, 250, 30);

    JLabel lblNameProduct = new JLabel("Nome do Produto:");
    lblNameProduct.setFont(new Font("Arial", Font.PLAIN, 16));
    lblNameProduct.setForeground(new Color(130, 87, 229));
    lblNameProduct.setBackground(Color.DARK_GRAY);
    lblNameProduct.setBounds(10, 60, 146, 14);

    JLabel lblDescricao = new JLabel("Descricao do Produto:");
    lblDescricao.setFont(new Font("Arial", Font.PLAIN, 16));
    lblDescricao.setForeground(new Color(130, 87, 229));
    lblDescricao.setBackground(Color.DARK_GRAY);
    lblDescricao.setBounds(10, 106, 171, 14);

    JLabel lblValue = new JLabel("Valor do Produto:");
    lblValue.setFont(new Font("Arial", Font.PLAIN, 16));
    lblValue.setForeground(new Color(130, 87, 229));
    lblValue.setBounds(10, 148, 146, 14);

    txtName = new JTextField();
    txtName.setBounds(170, 63, 169, 25);
    txtName.setColumns(10);
    txtName.setFont(new Font("Arial", Font.BOLD, 14));
    txtName.setForeground(new Color(44, 44, 44));

    txtDescripion = new JTextField();
    txtDescripion.setBounds(170, 106, 169, 25);
    txtDescripion.setColumns(10);
    txtDescripion.setFont(new Font("Arial", Font.BOLD, 14));
    txtDescripion.setForeground(new Color(44, 44, 44));

    txtValue = new JTextField();
    txtValue.setBounds(170, 148, 59, 25);
    txtValue.setColumns(10);
    txtValue.setFont(new Font("Arial", Font.BOLD, 14));
    txtValue.setForeground(new Color(44, 44, 44));

    JButton btnConsulta = new JButton("Consultar");
    btnConsulta.setBackground(new Color(4, 204, 93));
    btnConsulta.setBounds(125, 250, 250, 25);
    btnConsulta.setFont(new Font("Arial", Font.BOLD, 14));
    btnConsulta.setForeground(new Color(255, 255, 255));

    frame.getContentPane().add(Title);
    frame.getContentPane().add(lblNameProduct);
    frame.getContentPane().add(lblDescricao);
    frame.getContentPane().add(lblValue);
    frame.getContentPane().add(txtName);
    frame.getContentPane().add(txtDescripion);
    frame.getContentPane().add(txtValue);
    frame.getContentPane().add(btnConsulta);

    btnConsulta.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent e) {
        JOptionPane.showMessageDialog(null, "Nome do produto: " + txtName.getText() + "\nDescricao do produto: "
            + txtDescripion.getText() + "\nValor do produto: " + txtValue.getText());
      }
    });

  }
}