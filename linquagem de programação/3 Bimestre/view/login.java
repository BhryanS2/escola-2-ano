package view;

import java.awt.EventQueue;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.SwingConstants;
import java.awt.Font;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.Color;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class login {
  private JFrame frame;
  private JTextField txtName;
  private JTextField txtAge;
  private JTextField txtSex;
  private JTextField txtCity;

  public static void main(String[] args) {
    EventQueue.invokeLater(new Runnable() {
      public void run() {
        try {
          login window = new login();
          window.frame.setVisible(true);
        } catch (Exception e) {
          e.printStackTrace();
        }
      }
    });
  }

  public login() {
    initialize();
  }

  private void initialize() {
    frame = new JFrame();
    frame.setBounds(100, 100, 500, 330);
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    frame.getContentPane().setLayout(null);

    JLabel lblSchool = new JLabel("Escola");
    lblSchool.setHorizontalAlignment(SwingConstants.CENTER);
    lblSchool.setFont(new Font("Arial", Font.BOLD, 24));
    lblSchool.setForeground(new Color(0, 0, 0));
    lblSchool.setBackground(Color.LIGHT_GRAY);
    lblSchool.setBounds(125, 30, 250, 30);

    JLabel lblName = new JLabel("Nome do Aluno:");
    lblName.setFont(new Font("Arial", Font.PLAIN, 16));
    lblName.setBounds(10, 90, 250, 20);
    lblName.setForeground(new Color(130, 87, 229));

    JLabel lblAge = new JLabel("Idade:");
    lblAge.setFont(new Font("Arial", Font.PLAIN, 16));
    lblAge.setBounds(10, 120, 250, 20);
    lblAge.setForeground(new Color(130, 87, 229));

    JLabel lblSex = new JLabel("Sexo:");
    lblSex.setFont(new Font("Arial", Font.PLAIN, 16));
    lblSex.setBounds(10, 150, 250, 20);
    lblSex.setForeground(new Color(130, 87, 229));

    JLabel lblCity = new JLabel("Cidade:");
    lblCity.setFont(new Font("Arial", Font.PLAIN, 16));
    lblCity.setBounds(10, 180, 250, 20);
    lblCity.setForeground(new Color(130, 87, 229));

    txtName = new JTextField();
    txtName.setBounds(125, 90, 160, 20);
    txtName.setColumns(10);
    txtName.setFont(new Font("Arial", Font.BOLD, 14));
    txtName.setForeground(new Color(44, 44, 44));

    txtAge = new JTextField();
    txtAge.setColumns(10);
    txtAge.setBounds(54, 120, 32, 20);
    txtAge.setFont(new Font("Arial", Font.BOLD, 14));
    txtAge.setForeground(new Color(44, 44, 44));

    txtSex = new JTextField();
    txtSex.setColumns(10);
    txtSex.setBounds(54, 150, 160, 20);
    txtSex.setFont(new Font("Arial", Font.BOLD, 14));
    txtSex.setForeground(new Color(44, 44, 44));

    txtCity = new JTextField();
    txtCity.setColumns(10);
    txtCity.setBounds(66, 180, 160, 20);
    txtCity.setFont(new Font("Arial", Font.BOLD, 14));
    txtCity.setForeground(new Color(44, 44, 44));

    JButton btnSaida = new JButton("Entrar");
    btnSaida.setBackground(new Color(4, 204, 93));
    btnSaida.setForeground(new Color(255, 255, 255));
    btnSaida.setBounds(125, 240, 250, 30);

    frame.getContentPane().add(lblSchool);
    frame.getContentPane().add(lblName);
    frame.getContentPane().add(lblAge);
    frame.getContentPane().add(lblSex);
    frame.getContentPane().add(lblCity);
    frame.getContentPane().add(txtName);
    frame.getContentPane().add(txtAge);
    frame.getContentPane().add(txtSex);
    frame.getContentPane().add(txtCity);
    frame.getContentPane().add(btnSaida);

    btnSaida.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent e) {
        JOptionPane.showMessageDialog(null, "Nome do aluno: " + txtName.getText() + "\nIdade: " + txtAge.getText()
            + "\nSexo: " + txtSex.getText() + "\nCidade: " + txtCity.getText());
      }
    });
  }
}