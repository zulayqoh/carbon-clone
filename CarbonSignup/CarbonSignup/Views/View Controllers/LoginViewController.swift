//
//  LoginViewController.swift
//  CarbonSignup
//
//  Created by Decagon on 24/08/2021.
//


import UIKit

class LoginViewController: UIViewController {
  
   var loginViewModel = LoginViewModel()
  
   let signInButton: UIButton = {
    let button = UIButton()
    button.setTitle("Sign in", for: .normal)
    button.backgroundColor = UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00)
    button.setTitleColor(.white, for: .normal)
    button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
    button.addTarget(self, action: #selector(didTapSigninButton), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
   let forgotPinButton: UIButton = {
    let button = UIButton()
    button.setTitle("Forgot PIN?", for: .normal)
    button.backgroundColor = .white
    button.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
    button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
    button.addTarget(self, action: #selector(didTapSigninButton), for: .touchUpInside)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()
  
   let setUpNewAccountButton: UIButton = {
    let button = UIButton()
    button.setTitle("Set up new account", for: .normal)
    button.backgroundColor = .white
    button.setTitleColor(UIColor(red: 0.29, green: 0.05, blue: 0.76, alpha: 1.00), for: .normal)
    button.titleLabel?.font = UIFont(name: "Helvetica", size: 18)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(didTapSetUpButton), for: .touchUpInside)
    return button
  }()

   let welcomeLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Hi there, welcome back , Please sign in"
    label.font = UIFont(name: "Helvetica", size: 16)
    return label
  }()

   let emailLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Email"
    label.font = UIFont(name: "Helvetica", size: 14)
    return label
  }()

   let passwordLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Password"
    label.font = UIFont(name: "Helvetica", size: 14)
    return label
  }()

   let newToCarbonLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "New to Carbon?"
    return label
  }()

   let emailTextField: paddedTextField = {
    let textField = paddedTextField()
    textField.placeholder = ""
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.layer.borderWidth = 0
    textField.keyboardType = .emailAddress
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.cornerRadius = 5
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    return textField
  }()

   let passwordTextField: paddedTextField = {
    let textField = paddedTextField()
    textField.placeholder = ""
    textField.layer.borderColor = UIColor.lightGray.cgColor
    textField.layer.borderWidth = 0
    textField.isSecureTextEntry = true
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.cornerRadius = 5
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1.00)
    return textField
  }()

  let logoImageView : UIImageView = {
    let image =  UIImage(named: "Carbon")
    let imageView = UIImageView(image: image)
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
 
  override func viewWillLayoutSubviews() {
    signInButton.layer.cornerRadius = 8
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    layoutViews()
    didTapSigninButton(signInButton)
    didTapSetUpButton(setUpNewAccountButton)
    loginViewModel.delegate = self
  }
  
 
  
}



