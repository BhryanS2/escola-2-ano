package view;

import java.awt.*;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class TeacherExemple {
  private String[] columnNames = { "Nome do Produto", "Descrição do Produto", "Data de Cadastro", "Quantidade",
      "Preço" };
  private JFrame frame;
  private JTextField txtName;
  private JTextField txtRegister;
  private JTextField txtDescription;
  private JTextField txtAmount;
  private JTextField txtValue;
  private JButton btnRegister, btnUpdate, btnDelete;
  private JPanel painelFundo;
  private JTable table;
  private JScrollPane barraRolagem;

  /**
   * Launch the application.
   */
  public static void main(String[] args) {
    EventQueue.invokeLater(new Runnable() {
      public void run() {
        try {
          TeacherExemple window = new TeacherExemple();
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
  public TeacherExemple() {
    initialize();
  }

  /**
   * Initialize the contents of the frame.
   */
  private void initialize() {
    Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
    Integer width = (int) screenSize.getWidth();
    Integer height = (int) screenSize.getHeight();
    int widthElement = (int) (width * 22) / 100;
    int WIDTH = (width / 2) - (widthElement / 2);
    int HEIGHT = 25;
    int POSITION = 30;
    int COLUMNS = 10;
    int BUTTON_WIDTH = 150;
    int BUTTON_WIDTH_Center = (width / 3);
    int ESPACE_BUTTON = BUTTON_WIDTH_Center + BUTTON_WIDTH + 50;
    JLabel lblName = new JLabel("Nome do Produto");
    JLabel lblDescription = new JLabel("Descrição do Produto");
    JLabel lblRegister = new JLabel("Data de Cadastro");
    JLabel lblAmount = new JLabel("Quantidade");
    JLabel lblValue = new JLabel("Preço");

    btnRegister = new JButton("Cadastrar");
    btnUpdate = new JButton("Atualizar");
    btnDelete = new JButton("Deletar");

    txtName = new JTextField();
    txtRegister = new JTextField();
    txtDescription = new JTextField();
    txtAmount = new JTextField();
    txtValue = new JTextField();

    frame = new JFrame();
    frame.setBounds(100, 100, width, height);
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

    lblName.setBounds(WIDTH, POSITION, widthElement, HEIGHT);
    txtName.setBounds(WIDTH, POSITION * 2, widthElement, HEIGHT);

    lblRegister.setBounds(WIDTH, POSITION * 3, widthElement, HEIGHT);
    txtRegister.setBounds(WIDTH, POSITION * 4, widthElement, HEIGHT);

    lblDescription.setBounds(WIDTH, POSITION * 5, widthElement, HEIGHT);
    txtDescription.setBounds(WIDTH, POSITION * 6, widthElement, HEIGHT);

    lblAmount.setBounds(WIDTH, POSITION * 7, widthElement, HEIGHT);
    txtAmount.setBounds(WIDTH, POSITION * 8, widthElement, HEIGHT);

    lblValue.setBounds(WIDTH, POSITION * 9, widthElement, HEIGHT);
    txtValue.setBounds(WIDTH, POSITION * 10, widthElement, HEIGHT);

    btnRegister.setBounds(BUTTON_WIDTH_Center, POSITION * 11, BUTTON_WIDTH, HEIGHT);
    btnUpdate.setBounds(ESPACE_BUTTON, POSITION * 11, BUTTON_WIDTH, HEIGHT);
    btnDelete.setBounds(ESPACE_BUTTON + BUTTON_WIDTH + 50, POSITION * 11, BUTTON_WIDTH, HEIGHT);

    txtName.setColumns(COLUMNS);
    txtRegister.setColumns(COLUMNS);
    txtDescription.setColumns(COLUMNS);
    txtAmount.setColumns(COLUMNS);
    txtValue.setColumns(COLUMNS);
    Container contentFrame = frame.getContentPane();
    contentFrame.setLayout(null);
    contentFrame.add(lblAmount);
    contentFrame.add(txtName);
    contentFrame.add(txtRegister);
    contentFrame.add(txtDescription);
    contentFrame.add(txtAmount);
    contentFrame.add(btnRegister);
    contentFrame.add(btnUpdate);
    contentFrame.add(btnDelete);
    contentFrame.add(lblName);
    contentFrame.add(lblRegister);
    contentFrame.add(lblDescription);
    contentFrame.add(lblValue);
    contentFrame.add(txtValue);

    painelFundo = new JPanel();
    painelFundo.setLayout(new GridLayout(1, 1));
    // transform map in Object[][]

    table = new JTable(new DefaultTableModel(new Object[][] {}, columnNames));
    barraRolagem = new JScrollPane(table);
    painelFundo.add(barraRolagem);

    painelFundo.setVisible(true);
    painelFundo.setBounds(WIDTH - 60, POSITION * 13, 500, 120);

    contentFrame.add(painelFundo);

    // buttons actions
    btnRegister.addActionListener(e -> {
      String result = this.resgister();
      result = result.length() > 0 ? result : "Erro ao registrar";
      JOptionPane.showMessageDialog(null, result);
    });

    btnUpdate.addActionListener(e -> {
      String result = this.update();
      result = result.length() > 0 ? result : "Erro ao fazer update";
      JOptionPane.showMessageDialog(null, result);
    });

    btnDelete.addActionListener(e -> {
      String result = this.Delete();
      result = result.length() > 0 ? result : "Erro ao deletar";
      JOptionPane.showMessageDialog(null, result);
    });
  }

  private String resgister() {
    String result = "";
    DefaultTableModel model = (DefaultTableModel) table.getModel();
    Object[] data = getData();
    model.addRow(data);
    result = "Produto Cadastrado com sucesso";
    return result;
  }

  private Object[] getData() {
    Object[] data = {
        txtName.getText(),
        txtDescription.getText(),
        txtRegister.getText(),
        txtAmount.getText(),
        txtValue.getText()
    };
    return data;
  }

  private String update() {
    String result = "";
    Object[] data = getData();
    int row = table.getSelectedRow();
    if (row == -1) {
      result = "Selecione uma linha";
      return result;
    }

    for (int i = 0; i < data.length; i++) {
      table.setValueAt(data[i], row, i);
    }
    result = "Produto autulizado com sucesso";
    return result;
  }

  private String Delete() {
    String result = "";
    int row = table.getSelectedRow();
    if (row == -1) {
      result = "Erro ao deletar, Selecione uma linha";
      return result;
    }
    DefaultTableModel model = (DefaultTableModel) table.getModel();
    model.removeRow(row);
    result = "Linha removida com sucesso";
    return result;
  }
}
