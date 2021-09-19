//
//  RegisterViewController.swift
//  CarbonSignup
//
//  Created by Decagon on 24/08/2021.
//

import UIKit

class RegisterViewController: UIViewController {
  
  let signviewmodel = SignUpViewModel()
  
  let welcomeLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.numberOfLines = 2
    label.textAlignment = .center
    label.text = "Let's set things up. \nPlease fill out these basic details to get started."
    return label
  }()
  
  
  let firstNameTextField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1)
    return textField
  }()
  
  let middleNameTextField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1)
    return textField
  }()
  
  let surnameNameTextField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1)
    return textField
  }()
  
  let emailTextField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1)
    return textField
  }()
  
  let genderTextField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1)
    return textField
  }()
  
  let numberField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1)
    return textField
  }()
  
  let passwordField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.layer.borderWidth = 0
    textField.layer.cornerRadius = 5
    textField.keyboardType = .emailAddress
    textField.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.97, alpha: 1)
    return textField
  }()
  
  // MARK:- CREATE LABELS
  
  let firstNameLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "First Name"
    return label
  }()
  
  let middleNameLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Middle Name"
    return label
  }()
  
  let surnameLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Surname"
    return label
  }()
  
  let emailLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Email"
    return label
  }()
  
  let genderLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Gender"
    return label
  }()
  
  let numberLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Phone Number"
    return label
  }()
  
  let passwordLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Password"
    return label
  }()
  
  let termsAndPrivacyLabel: UILabel = {
    let label = UILabel()
    label.numberOfLines = 2
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "By continuing, you accept our Terms of service \n& Privacy Policy"
    return label
  }()
  
  // MARK:- CREATE BUTTONS
  
  let createButton: UIButton = {
    let button = UIButton()
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("Create account", for: .normal)
    button.setTitleColor(.white, for: .normal)
    button.addTarget(self, action: #selector(didTapCreateButton), for: .touchUpInside)
    button.backgroundColor = .lightGray
    return button
  }()
  
  
  // MARK:- VIEW DID LOAD
  override func viewDidLoad() {
    super.viewDidLoad()
    signviewmodel.delegate = self
    addViews()
    setUpConstraint()
  }
  
}
