package view;

import java.awt.*;
import java.awt.event.*;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;

public class index {
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
  private JLabel lblTitle = new JLabel("Cadastro de Produtos | Supermercado");
  private Color white = new Color(255, 255, 255);
  private Color background = new Color(242, 243, 244);
  private Color text = new Color(102, 102, 102);
  private Color textHighlight = new Color(179, 185, 255);
  private Color red = new Color(232, 63, 91);
  private Color green = new Color(76, 214, 43);
  private Color blue = new Color(89, 101, 224);
  private Color blueDark = new Color(73, 83, 184);

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

  public index() {
    initialize();
  }

  private void definePositionComponents() {
    lblTitle.setBounds(WIDTH - 5, POSITION - 15, widthElement + 20, HEIGHT);

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

    lblName.setBounds(WIDTH, POSITION * 2, widthElement, HEIGHT);
    txtName.setBounds(WIDTH, POSITION * 3, widthElement, HEIGHT);

    lblRegister.setBounds(WIDTH, POSITION * 4, widthElement, HEIGHT);
    txtRegister.setBounds(WIDTH, POSITION * 5, widthElement, HEIGHT);

    lblDescription.setBounds(WIDTH, POSITION * 6, widthElement, HEIGHT);
    txtDescription.setBounds(WIDTH, POSITION * 7, widthElement, HEIGHT);

    lblAmount.setBounds(WIDTH, POSITION * 8, widthElement, HEIGHT);
    txtAmount.setBounds(WIDTH, POSITION * 9, widthElement, HEIGHT);

    lblValue.setBounds(WIDTH, POSITION * 10, widthElement, HEIGHT);
    txtValue.setBounds(WIDTH, POSITION * 11, widthElement, HEIGHT);

    btnRegister.setBounds(BUTTON_WIDTH_Center, POSITION * 12, BUTTON_WIDTH, HEIGHT);
    btnUpdate.setBounds(ESPACE_BUTTON, POSITION * 12, BUTTON_WIDTH, HEIGHT);
    btnDelete.setBounds(ESPACE_BUTTON + BUTTON_WIDTH + 50, POSITION * 12, BUTTON_WIDTH, HEIGHT);

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
    lblTitle.setFont(new Font("Arial", Font.BOLD, 20));
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
    lblTitle.setForeground(text);
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
    Object[] components = { lblTitle, lblName, txtName, lblRegister, txtRegister, lblDescription, txtDescription,
        lblAmount,
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
      JOptionPane.showMessageDialog(null, result);
      clearFields();
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
      JOptionPane.showMessageDialog(null, result);
      clearFields();
    });

    btnDelete.addActionListener(e -> {
      String result = "";
      result = this.Delete();
      result = result.length() > 0 ? result : "Erro ao deletar";
      JOptionPane.showMessageDialog(null, result);
      clearFields();
    });
  }

  private void clearFields() {
    txtName.setText("");
    txtRegister.setText("");
    txtDescription.setText("");
    txtAmount.setText("");
    txtValue.setText("");
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
    DefaultTableModel model = (DefaultTableModel) table.getModel();
    Object[] data = products();
    model.addRow(data);
    result = "Produto Cadastrado com sucesso";
    return result;
  }

  private String update() {
    String result = "";
    Object[] data = products();
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
