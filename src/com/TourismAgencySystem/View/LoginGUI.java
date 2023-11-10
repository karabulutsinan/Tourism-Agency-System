package com.TourismAgencySystem.View;

import javax.swing.*;

import com.TourismAgencySystem.Helper.*;
import com.TourismAgencySystem.Model.Admin;
import com.TourismAgencySystem.Model.Employee;
import com.TourismAgencySystem.Model.User;
import com.TourismAgencySystem.Model.UserOp;

import java.awt.event.*;

public class LoginGUI extends JFrame {
    private JPanel wtop;
    private JPanel wbottom;
    private JPanel wrapper;
    private JTextField fieldUsername;
    private JPasswordField fieldPassword;
    private JButton buttonLogin;
    private JCheckBox showPasswordCheckBox;

    public LoginGUI() {
        add(wrapper);
        setSize(400, 400);
        setLocation(Helper.screenCenterLocation("x", getSize()), Helper.screenCenterLocation("y", getSize()));
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setTitle(Config.PROJECT_TITLE);
        setResizable(false);
        setVisible(true);
        //Forn 8
        //Login işleminde kullanıcının kaydı olup olmadığı kontrol ediliyor mu,
        // kaydı yoksa ya da hatalı giriş yapıldıysa kullanıcıya hatalı giriş mesajı veriliyor mu?
        buttonLogin.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (Helper.isFieldEmpty(fieldUsername) || Helper.isFieldEmpty(fieldPassword)) {
                    Helper.showMessage("fill");
                } else {
                    User u = UserOp.getFetch(fieldUsername.getText(), fieldPassword.getText());
                    if (u == null) {
                        Helper.showMessage("User not found");
                    } else {
                        switch (u.getType()) {
                            case "admin":
                                AdminGUI adminGUI = new AdminGUI((Admin) u);
                                break;
                            case "employee":
                                EmployeeGUI employeeGUI = new EmployeeGUI((Employee) u);
                                break;
                        }
                        dispose();
                    }
                }
            }
        });


        // Değerlendirme Formu 8
        // Login işleminde kullanıcının kaydı olup olmadığı kontrol ediliyor mu, kaydı yoksa ya da hatalı giriş yapıldıysa kullanıcıya hatalı giriş mesajı veriliyor mu?
        fieldPassword.addKeyListener(new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent e) {
                super.keyPressed(e);
                if (e.getKeyCode() == KeyEvent.VK_ENTER) {
                    if (Helper.isFieldEmpty(fieldUsername) || Helper.isFieldEmpty(fieldPassword)) {
                        Helper.showMessage("fill");
                    } else {
                        User u = UserOp.getFetch(fieldUsername.getText(), fieldPassword.getText());
                        if (u == null) {
                            Helper.showMessage("User not found");
                        } else {
                            switch (u.getType()) {
                                case "admin":
                                    AdminGUI adminGUI = new AdminGUI((Admin) u);
                                    break;
                                case "employee":
                                    EmployeeGUI employeeGUI = new EmployeeGUI((Employee) u);
                                    break;
                            }
                            dispose();
                        }
                    }
                }
            }
        });
        // Değerlendirme Formu 8
        // Login işleminde kullanıcının kaydı olup olmadığı kontrol ediliyor mu, kaydı yoksa ya da hatalı giriş yapıldıysa kullanıcıya hatalı giriş mesajı veriliyor mu?
        fieldUsername.addKeyListener(new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent e) {
                super.keyPressed(e);
                if (e.getKeyCode() == KeyEvent.VK_ENTER) {
                    if (Helper.isFieldEmpty(fieldUsername) || Helper.isFieldEmpty(fieldPassword)) {
                        Helper.showMessage("fill");
                    } else {
                        User u = UserOp.getFetch(fieldUsername.getText(), fieldPassword.getText());
                        if (u == null) {
                            Helper.showMessage("User not found");
                        } else {
                            switch (u.getType()) {
                                case "admin":
                                    AdminGUI adminGUI = new AdminGUI((Admin) u);
                                    break;
                                case "employee":
                                    EmployeeGUI employeeGUI = new EmployeeGUI((Employee) u);
                                    break;
                            }
                            dispose();
                        }
                    }
                }
            }
        });


        showPasswordCheckBox.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (showPasswordCheckBox.isSelected()) {
                    fieldPassword.setEchoChar((char) 0);
                } else {
                    fieldPassword.setEchoChar('*');
                }
            }
        });
    }


    public static void main(String[] args) {
        Helper.setLayout();
        LoginGUI loginGUI = new LoginGUI();
    }
}
