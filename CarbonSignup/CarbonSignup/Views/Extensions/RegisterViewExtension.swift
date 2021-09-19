//
//  RegisterViewExtension.swift
//  CarbonSignup
//
//  Created by Decagon on 29/08/2021.
//

import UIKit

extension RegisterViewController {
  
  @objc func didTapCreateButton(_ sender: UIButton) {
    let request = SignUpRequest(firstName: firstNameTextField.text, middleName: middleNameTextField.text, emailAddress: emailTextField.text, password: passwordField.text, gender: genderTextField.text, phonenumber: numberField.text)
    
    signviewmodel.signUpUser(signUpRequest: request)
  }
}
