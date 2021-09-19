//
//  LoginModel.swift
//  CarbonSignup
//
//  Created by Decagon on 26/08/2021.
//

import UIKit

extension LoginViewController {
  
   func layoutViews() {
    view.addSubview(welcomeLabel)
    view.addSubview(signInButton)
    view.addSubview(logoImageView)
    view.addSubview(emailTextField)
    view.addSubview(passwordTextField)
    view.addSubview(emailLabel)
    view.addSubview(passwordLabel)
    view.addSubview(setUpNewAccountButton)
    view.addSubview(newToCarbonLabel)
    view.addSubview(forgotPinButton)

    self.navigationController?.setNavigationBarHidden(false, animated: true)
    NSLayoutConstraint.activate([
      
      signInButton.heightAnchor.constraint(equalToConstant: 50),
      signInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
      signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      signInButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

      logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
      logoImageView.heightAnchor.constraint(equalToConstant: 60),
      logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
      logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor , constant: -100 ),
      logoImageView.heightAnchor.constraint(equalToConstant: 100),

      emailTextField.heightAnchor.constraint(equalToConstant: 50),
      emailTextField.bottomAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 126),
      emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

      passwordTextField.heightAnchor.constraint(equalToConstant: 50),
      passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 6),
      passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
      
      forgotPinButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
      forgotPinButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),

      welcomeLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 10),
      welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

      emailLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      emailLabel.bottomAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40),

      passwordLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      passwordLabel.bottomAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 120),

      setUpNewAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -12),
      setUpNewAccountButton.leftAnchor.constraint(equalTo: view.centerXAnchor, constant: 2),

      newToCarbonLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -18),
      newToCarbonLabel.rightAnchor.constraint(equalTo: view.centerXAnchor)
      
    ])
  }
  
  // MARK:- did Tap SetUpButton, move to RegisterView
  @objc func didTapSetUpButton(_ sender: UIButton) {
    let setUpViewController = RegisterViewController()
    setUpViewController.modalPresentationStyle = .fullScreen
    present(setUpViewController, animated: true, completion: nil)
  }
  
  // Move to the PersonalDetails View
  @objc func didTapSigninButton(_ sender: UIButton) {
    let request = LoginRequest(email: emailTextField.text, password: passwordTextField.text)
    loginViewModel.loginUser(loginRequest: request)
  }
  
  class paddedTextField: UITextField {
    override func textRect(forBounds bounds: CGRect) -> CGRect {
      return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
      return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width + 10, height: bounds.height)
    }
  }
}
