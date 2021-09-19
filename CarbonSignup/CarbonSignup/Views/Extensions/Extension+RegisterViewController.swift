//
//  Extension+ViewController.swift
//  CarbonSignup
//
//  Created by Decagon on 23/08/2021.
//

import UIKit

extension RegisterViewController {
  
  func addViews() {
    view.backgroundColor = .white
    self.navigationItem.title = "Create your Carbon account"
    view.addSubview(welcomeLabel)
    view.addSubview(termsAndPrivacyLabel)
    view.addSubview(createButton)
    
    view.addSubview(firstNameTextField)
    view.addSubview(middleNameTextField)
    view.addSubview(surnameNameTextField)
    view.addSubview(emailTextField)
    view.addSubview(genderTextField)
    view.addSubview(numberField)
    view.addSubview(passwordField)
    
    view.addSubview(middleNameLabel)
    view.addSubview(firstNameLabel)
    view.addSubview(surnameLabel)
    view.addSubview(emailLabel)
    view.addSubview(genderLabel)
    view.addSubview(numberLabel)
    view.addSubview(passwordLabel)
    view.addSubview(termsAndPrivacyLabel)
  }
  
  func setUpConstraint() {
    NSLayoutConstraint.activate([
      welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
      welcomeLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
      welcomeLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
      
      firstNameTextField.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 50),
      firstNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
      firstNameTextField.rightAnchor.constraint(equalTo: view.centerXAnchor, constant: -10),
      firstNameTextField.heightAnchor.constraint(equalToConstant: 50),
      
      firstNameLabel.bottomAnchor.constraint(equalTo: firstNameTextField.topAnchor, constant: -5),
      firstNameLabel.leftAnchor.constraint(equalTo: firstNameTextField.leftAnchor),
      
      middleNameTextField.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 50),
      middleNameTextField.leftAnchor.constraint(equalTo: view.centerXAnchor, constant: 10),
      middleNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
      middleNameTextField.heightAnchor.constraint(equalToConstant: 50),
      
      middleNameLabel.bottomAnchor.constraint(equalTo: middleNameTextField.topAnchor, constant: -5),
      middleNameLabel.leftAnchor.constraint(equalTo: middleNameTextField.leftAnchor),
      
      surnameNameTextField.topAnchor.constraint(equalTo: firstNameTextField.bottomAnchor, constant: 40),
      surnameNameTextField.leftAnchor.constraint(equalTo: firstNameTextField.leftAnchor),
      surnameNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
      surnameNameTextField.heightAnchor.constraint(equalToConstant: 50),
      
      surnameLabel.bottomAnchor.constraint(equalTo: surnameNameTextField.topAnchor, constant: -5),
      surnameLabel.leftAnchor.constraint(equalTo: surnameNameTextField.leftAnchor),
      
      emailTextField.topAnchor.constraint(equalTo: surnameNameTextField.bottomAnchor, constant: 40),
      emailTextField.leftAnchor.constraint(equalTo: surnameNameTextField.leftAnchor),
      emailTextField.rightAnchor.constraint(equalTo: surnameNameTextField.rightAnchor),
      emailTextField.heightAnchor.constraint(equalToConstant: 50),
      
      emailLabel.bottomAnchor.constraint(equalTo: emailTextField.topAnchor, constant: -5),
      emailLabel.leftAnchor.constraint(equalTo: emailTextField.leftAnchor),
      
      genderTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 40),
      genderTextField.leftAnchor.constraint(equalTo: emailTextField.leftAnchor),
      genderTextField.rightAnchor.constraint(equalTo: emailTextField.rightAnchor),
      genderTextField.heightAnchor.constraint(equalToConstant: 50),
      
      genderLabel.bottomAnchor.constraint(equalTo: genderTextField.topAnchor, constant: -5),
      genderLabel.leftAnchor.constraint(equalTo: genderTextField.leftAnchor),
      
      numberField.topAnchor.constraint(equalTo: genderTextField.bottomAnchor, constant: 40),
      numberField.leftAnchor.constraint(equalTo: genderTextField.leftAnchor),
      numberField.rightAnchor.constraint(equalTo: genderTextField.rightAnchor),
      numberField.heightAnchor.constraint(equalToConstant: 50),
      
      numberLabel.bottomAnchor.constraint(equalTo: numberField.topAnchor, constant: -5),
      numberLabel.leftAnchor.constraint(equalTo: numberField.leftAnchor),
      
      passwordField.topAnchor.constraint(equalTo: numberField.bottomAnchor, constant: 40),
      passwordField.leftAnchor.constraint(equalTo: numberField.leftAnchor),
      passwordField.rightAnchor.constraint(equalTo: numberField.rightAnchor),
      passwordField.heightAnchor.constraint(equalToConstant: 50),
      
      passwordLabel.bottomAnchor.constraint(equalTo: passwordField.topAnchor, constant: -5),
      passwordLabel.leftAnchor.constraint(equalTo: passwordField.leftAnchor),
      
      createButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
      createButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
      createButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
      createButton.heightAnchor.constraint(equalToConstant: 60),
      
      termsAndPrivacyLabel.bottomAnchor.constraint(equalTo: createButton.topAnchor, constant: -20),
      termsAndPrivacyLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15)
      
    ])
  }
}
