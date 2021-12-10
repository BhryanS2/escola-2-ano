
package view;

import java.awt.*;
import java.util.*;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class index {
  private Map<Integer, String> data = new HashMap<Integer, String>();
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
  private JTable tabela;
  private JScrollPane barraRolagem;

  /**
   * Launch the application.
   */

  public void setData(Map<Integer, String> data) {
    this.data = data;
  }

  public Map<Integer, String> getData() {
    return data;
  }

  public static void main(String[] args) {
    EventQueue.invokeLater(new Runnable() {
      public void run() {
        try {
          index window = new index();
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
  public index() {
    initialize();
  }

  /**
   * Initialize the contents of the frame.
   */
  private void initialize() {
    Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
    Integer width = (int) screenSize.getWidth();
    Integer height = (int) screenSize.getHeight();
    int widthElement = 351;
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

    tabela = new JTable(new DefaultTableModel(new Object[][] {}, columnNames));
    barraRolagem = new JScrollPane(tabela);
    painelFundo.add(barraRolagem);

    painelFundo.setVisible(true);
    painelFundo.setBounds(WIDTH - 60, POSITION * 13, 500, 120);

    contentFrame.add(painelFundo);

    // buttons actions
    btnRegister.addActionListener(e -> {
      String result = this.resgister();
      result = result.length() > 0 ? result : "Erro ao registrar";
      showTable();
      JOptionPane.showMessageDialog(null, result);
    });

    btnUpdate.addActionListener(e -> {
      String result = this.update();
      result = result.length() > 0 ? result : "Erro ao fazer update";
      showTable();
      JOptionPane.showMessageDialog(null, result);
    });

    btnDelete.addActionListener(e -> {
      String result = this.Delete();
      result = result.length() > 0 ? result : "Erro ao deletar";
      showTable();
      JOptionPane.showMessageDialog(null, result);
    });
  }

  private void showTable() {
    DefaultTableModel model = (DefaultTableModel) tabela.getModel();
    model.setDataVector(new Object[][] {}, columnNames);
    tabela.setModel(model);
    // transform data in Object[][]
    Object[][] objData = new Object[data.size()][columnNames.length];
    for (int i = 0; i < data.size(); i++) {
      String values = data.get(i);
      System.out.println(values);
      if (values != null) {
        String[] valuesSplit = values.split(";");
        for (int j = 0; j < valuesSplit.length; j++) {
          objData[i][j] = valuesSplit[j];
        }
      }
    }
    model.setDataVector(objData, columnNames);
    tabela.setModel(model);
  }

  private Object[] products() {
    String name = txtName.getText();
    String register = txtRegister.getText();
    String description = txtDescription.getText();
    String amount = txtAmount.getText();
    String value = txtValue.getText();
    Object[] product = { name, description, register, amount, value };
    return product;
  };

  private String resgister() {
    String result = "";
    Object[] product = products();
    Boolean res = indexOf(product);
    if (res) {
      result = "Produto já cadastrado";
      return result;
    }
    // add product in matriz string
    String productString = "";
    for (int i = 0; i < product.length; i++) {
      productString += product[i] + ";";
    }
    System.out.println(productString);
    data.put(data.size(), productString);
    result = "Produto cadastrado com sucesso";
    return result;
  }

  private Boolean indexOf(Object[] product) {
    Boolean res = false;
    for (int i = 0; i < data.size(); i++) {
      String[] values = data.get(i).split(";");
      String name = values[0];
      if (name.equals(product[0])) {
        res = true;
        break;
      }
    }
    return res;
  }

  private String update() {
    String result = "";
    Object[] product = products();
    for (Object p : product) {
      if (p.equals("")) {
        result = "Preencha todos os campos";
        break;
      }
    }
    if (!result.equals("")) {
      return result;
    }
    Boolean res = indexOf(product);
    if (!res) {
      result = "Produto não cadastrado";
      return result;
    }
    String name = product[0].toString();
    int index = findProduct(name) + 1;
    String oldValue = data.get(index);
    String newValue = product[0] + ";" + product[1] + ";" + product[2] + ";" + product[3] + ";" + product[4];
    System.out.println("Velho " + oldValue);
    System.out.println("Novo " + newValue);
    data.replace(index, oldValue, newValue);
    result = "Produto atualizado com sucesso";
    return result;
  }

  private int findProduct(String register) {
    int index = 0;
    int left = 0;
    int right = data.size() - 1;
    while (left <= right) {
      int mid = (left + right) / 2;
      String[] values = data.get(mid).split(";");
      if (values[2].equals(register)) {
        index = mid;
        break;
      } else if (values[2].compareTo(register) < 0) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return index;
  }

  private String Delete() {
    String result = "";
    Object[] product = products();
    for (Object p : product) {
      if (p.equals("")) {
        result = "Preencha todos os campos";
        break;
      }
    }
    if (!result.equals("")) {
      return result;
    }
    Boolean res = indexOf(product);
    if (!res) {
      result = "Produto não cadastrado";
      return result;
    }
    String name = product[0].toString();
    int index = findProduct(name);
    data.remove(index);
    result = "Produto removido com sucesso";
    return result;
  }
}
