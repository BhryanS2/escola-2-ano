
package view;

import java.awt.*;
import java.awt.event.*;
import java.util.*;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class index {
  private Map<Integer, String> data = new HashMap<Integer, String>();
  private String[] columnNames = { "Nome do Produto", "Descrição do Produto", "Data de Cadastro", "Quantidade",
      "Preço" };
  JFrame frame;
  private JTextField txtName;
  private JTextField txtRegister;
  private JTextField txtDescription;
  private JTextField txtAmount;
  private JTextField txtValue;
  private JButton btnRegister, btnUpdate, btnDelete;
  private JPanel panelBG;
  private JTable table;
  private JScrollPane barraRolagem;
  private Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
  private Integer width = (int) screenSize.getWidth();
  private Integer height = (int) screenSize.getHeight();
  private int widthElement = 351;
  private int WIDTH = (width / 2) - (widthElement / 2);
  private int HEIGHT = 25;
  private int POSITION = 30;
  private int COLUMNS = 10;
  private int BUTTON_WIDTH = 150;
  private int BUTTON_WIDTH_Center = (width / 3);
  private int ESPACE_BUTTON = BUTTON_WIDTH_Center + BUTTON_WIDTH + 50;
  private JLabel lblName = new JLabel("Nome do Produto");
  private JLabel lblDescription = new JLabel("Descrição do Produto");
  private JLabel lblRegister = new JLabel("Data de Cadastro");
  private JLabel lblAmount = new JLabel("Quantidade");
  private JLabel lblValue = new JLabel("Preço");
  private Color white = new Color(255, 255, 255);
  private Color background = new Color(242, 243, 244);
  private Color text = new Color(102, 102, 102);
  private Color textHighlight = new Color(179, 185, 255);
  private Color red = new Color(232, 63, 91);
  private Color green = new Color(76, 214, 43);
  private Color blue = new Color(89, 101, 224);
  private Color blueDark = new Color(73, 83, 184);

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
  private void definePositionComponents() {

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
  }

  private void defineStyleComponents() {
    // colors and fonts
    frame.getContentPane().setBackground(background);
    lblName.setFont(new Font("Tahoma", Font.PLAIN, 14));
    lblDescription.setFont(new Font("Tahoma", Font.PLAIN, 14));
    lblRegister.setFont(new Font("Tahoma", Font.PLAIN, 14));
    lblAmount.setFont(new Font("Tahoma", Font.PLAIN, 14));
    lblValue.setFont(new Font("Tahoma", Font.PLAIN, 14));
    txtName.setFont(new Font("Tahoma", Font.PLAIN, 14));
    txtRegister.setFont(new Font("Tahoma", Font.PLAIN, 14));
    txtDescription.setFont(new Font("Tahoma", Font.PLAIN, 14));
    txtAmount.setFont(new Font("Tahoma", Font.PLAIN, 14));
    txtValue.setFont(new Font("Tahoma", Font.PLAIN, 14));
    btnRegister.setFont(new Font("Tahoma", Font.PLAIN, 14));
    btnUpdate.setFont(new Font("Tahoma", Font.PLAIN, 14));
    btnDelete.setFont(new Font("Tahoma", Font.PLAIN, 14));

    // colors
    lblName.setForeground(text);
    lblDescription.setForeground(text);
    lblRegister.setForeground(text);
    lblAmount.setForeground(text);
    lblValue.setForeground(text);
    txtName.setForeground(text);
    txtRegister.setForeground(text);
    txtDescription.setForeground(text);
    txtAmount.setForeground(text);
    txtValue.setForeground(text);
    btnRegister.setForeground(text);
    btnUpdate.setForeground(text);
    btnDelete.setForeground(text);

    // text with highlight
    txtName.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, textHighlight));
    txtRegister.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, textHighlight));
    txtDescription.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, textHighlight));
    txtAmount.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, textHighlight));
    txtValue.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, textHighlight));
    // buttons colors
    btnDelete.setBackground(red);
    btnDelete.setForeground(white);
    btnRegister.setBackground(green);
    btnRegister.setForeground(white);
    btnUpdate.setBackground(blueDark);
    btnUpdate.setForeground(white);
    // remove borders buttons
    btnDelete.setBorder(null);
    btnRegister.setBorder(null);
    btnUpdate.setBorder(null);
  }

  private void Listeners() {
    // Color text when wirete focus
    txtName.addFocusListener((FocusListener) new FocusListener() {
      @Override
      public void focusGained(FocusEvent e) {
        txtName.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, textHighlight));
      }

      @Override
      public void focusLost(FocusEvent e) {
        txtName.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, green));
        String name = txtName.getText();
        if (name.equals("")) {
          txtName.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, red));
        }
      }
    });

    txtRegister.addFocusListener((FocusListener) new FocusListener() {
      @Override
      public void focusGained(FocusEvent e) {
        txtRegister.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, textHighlight));
      }

      @Override
      public void focusLost(FocusEvent e) {
        txtRegister.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, green));
        String register = txtRegister.getText();
        if (register.equals("")) {
          txtRegister.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, red));
        }
      }
    });

    txtDescription.addFocusListener((FocusListener) new FocusListener() {
      @Override
      public void focusGained(FocusEvent e) {
        txtDescription.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, textHighlight));
      }

      @Override
      public void focusLost(FocusEvent e) {
        txtDescription.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, green));
        String description = txtDescription.getText();
        if (description.equals("")) {
          txtDescription.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, red));
        }
      }
    });

    txtAmount.addFocusListener((FocusListener) new FocusListener() {
      @Override
      public void focusGained(FocusEvent e) {
        txtAmount.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, textHighlight));
      }

      @Override
      public void focusLost(FocusEvent e) {
        txtAmount.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, green));
        String amount = txtAmount.getText();
        if (amount.equals("")) {
          txtAmount.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, red));
        }
      }
    });

    txtValue.addFocusListener((FocusListener) new FocusListener() {
      @Override
      public void focusGained(FocusEvent e) {
        txtValue.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, textHighlight));
      }

      @Override
      public void focusLost(FocusEvent e) {
        txtValue.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, green));
        String value = txtValue.getText();
        if (value.equals("")) {
          txtValue.setBorder(BorderFactory.createMatteBorder(0, 0, 2, 0, red));
        }
      }
    });
    // add listener in txtAmount and value
    txtAmount.addKeyListener(new KeyAdapter() {
      @Override
      public void keyReleased(KeyEvent e) {
        String value = txtAmount.getText();
        // regex to remove all not numbers and dots
        String regex = "[^0-9.]";
        if (value.equals(""))
          txtAmount.setText("");
        else
          txtAmount.setText(value.replaceAll(regex, ""));
      }
    });

    txtValue.addKeyListener(new KeyAdapter() {
      @Override
      public void keyReleased(KeyEvent e) {
        String value = txtValue.getText();
        // regex to remove all not numbers and dots
        String regex = "[^0-9.]";
        if (value.equals(""))
          txtValue.setText("");
        else
          txtValue.setText(value.replaceAll(regex, ""));
      }
    });

    txtRegister.addKeyListener(new KeyAdapter() {
      @Override
      public void keyReleased(KeyEvent e) {
        String date = txtRegister.getText();
        String numbers = date.replaceAll("[^0-9]", "");
        String regex2 = "^([0-9]{2})([0-9])";
        String regex3 = "^([0-9]{2})([0-9]{2})([0-9])";
        String dateFormated = "";
        if (numbers.length() <= 4) {
          dateFormated = numbers.replaceAll(regex2, "$1/$2");
        } else {
          dateFormated = numbers.replaceAll(regex3, "$1/$2/$3");
        }
        if (dateFormated.length() <= 10) {
          txtRegister.setText(dateFormated);
          return;
        }
        txtRegister.setText(dateFormated.substring(0, 10));
        return;
      }
    });

  }

  private void initialize() {
    definePositionComponents();
    Listeners();
    defineStyleComponents();
    Container contentFrame = frame.getContentPane();
    contentFrame.setLayout(null);
    Object[] components = { lblName, txtName, lblRegister, txtRegister, lblDescription, txtDescription, lblAmount,
        txtAmount, lblValue, txtValue, btnRegister, btnUpdate, btnDelete };
    for (Object component : components) {
      contentFrame.add((Component) component);
    }

    panelBG = new JPanel();
    panelBG.setLayout(new GridLayout(1, 1));

    table = new JTable(new DefaultTableModel(new Object[][] {}, columnNames));
    // table colors and fonts
    table.setBackground(Color.WHITE);
    table.setFont(new Font("Tahoma", Font.PLAIN, 14));
    table.setRowHeight(30);
    table.setRowMargin(5);
    table.setRowSelectionAllowed(true);
    table.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
    table.setShowGrid(false);
    table.setSelectionBackground(background);
    table.setSelectionForeground(blue);

    barraRolagem = new JScrollPane(table);
    panelBG.add(barraRolagem);

    panelBG.setVisible(true);
    panelBG.setBounds((width / 4), POSITION * 13, width / 2, 300);

    contentFrame.add(panelBG);

    // buttons actions
    btnRegister.addActionListener(e -> {
      String result = "";
      boolean isValidFields = true;
      isValidFields = ValidateFields();
      if (!isValidFields) {
        JOptionPane.showMessageDialog(null, "Preencha todos os campos");
        return;
      }
      result = this.resgister();
      result = result.length() > 0 ? result : "Erro ao registrar";
      showTable();
      JOptionPane.showMessageDialog(null, result);
    });

    btnUpdate.addActionListener(e -> {
      String result = "";
      boolean isValidFields = true;
      isValidFields = ValidateFields();
      if (!isValidFields) {
        JOptionPane.showMessageDialog(null, "Preencha todos os campos");
        return;
      }
      result = this.update();
      result = result.length() > 0 ? result : "Erro ao fazer update";
      showTable();
      JOptionPane.showMessageDialog(null, result);
    });

    btnDelete.addActionListener(e -> {
      String result = "";
      boolean isValidFields = true;
      isValidFields = ValidateFields();
      if (!isValidFields) {
        JOptionPane.showMessageDialog(null, "Preencha todos os campos");
        return;
      }
      result = this.Delete();
      result = result.length() > 0 ? result : "Erro ao deletar";
      showTable();
      JOptionPane.showMessageDialog(null, result);
    });
  }

  private boolean ValidateFields() {
    if (txtName.getText().equals("")
        || txtRegister.getText().equals("")
        || txtDescription.getText().equals("")
        || txtAmount.getText().equals("")
        || txtValue.getText().equals("")) {
      return false;
    }
    return true;
  }

  private void showTable() {
    DefaultTableModel model = (DefaultTableModel) table.getModel();
    model.setDataVector(new Object[][] {}, columnNames);
    table.setModel(model);
    // transform data in Object[][]
    Object[][] objData = new Object[data.size()][columnNames.length];
    for (int i = 0; i < data.size(); i++) {
      String values = data.get(i);
      if (values != null) {
        String[] valuesSplit = values.split(";");
        for (int j = 0; j < valuesSplit.length; j++) {
          objData[i][j] = valuesSplit[j];
        }
      }
    }
    model.setDataVector(objData, columnNames);
    table.setModel(model);
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

  private Boolean indexOf(Object[] product) {
    Boolean res = false;
    for (int i = 0; i < data.size(); i++) {
      if (data.containsKey(i)) {
        String[] values = data.get(i).split(";");
        String name = values[0];
        if (name.equals(product[0])) {
          res = true;
          return res;
        }
      }
    }
    return res;
  }

  private int findProduct(String register) {
    int index = 0;
    int left = 0;
    int right = data.size() - 1;
    while (left <= right) {
      int mid = (left + right) / 2;
      String[] values = data.get(mid).split(";");
      String name = values[0];
      if (name.equals(register)) {
        index = mid;
        break;
      } else if (name.compareTo(register) < 0) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return index;
  }

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
    int row = table.getSelectedRow();
    if (row == -1) {
      data.put(data.size(), productString);
    } else {
      data.put(row, productString);
    }
    result = "Produto cadastrado com sucesso";
    return result;
  }

  private String update() {
    String result = "";
    Object[] product = products();
    String newValue = product[0] + ";" + product[1] + ";" + product[2] + ";" + product[3] + ";" + product[4];
    String nameNew = product[0].toString();
    int row = table.getSelectedRow();

    if (row != -1) {
      String oldValue = data.get(row);
      String nameOld = oldValue.split(";")[0];
      if (!nameOld.equals(nameNew)) {
        result = "Não é possível alterar o nome do produto";
        return result;
      }
      data.put(row, newValue);
      return result;
    }
    // Not line selected

    Boolean exists = indexOf(product);
    if (!exists) {
      result = "Produto não cadastrado";
      return result;
    }

    int index = findProduct(nameNew);
    data.replace(index, newValue);
    result = "Produto atualizado com sucesso";
    return result;
  }

  private String Delete() {
    String result = "";
    Object[] product = products();
    Boolean exists = indexOf(product);
    if (!exists) {
      result = "Produto não cadastrado";
      return result;
    }
    int row = table.getSelectedRow();
    if (row != -1) {
      data.remove(row);
      result = "Produto deletado com sucesso";
    } else {
      // Not line selected
      String name = product[0].toString();
      int index = findProduct(name);
      data.remove(index);
      result = "Produto removido com sucesso";
    }

    return result;
  }
}
