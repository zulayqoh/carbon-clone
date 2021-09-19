//
//  LoginView+Extension.swift
//  CarbonSignup
//
//  Created by Decagon on 27/08/2021.
//

import Foundation

extension LoginViewController: LoginViewModelDelegate {
  func didReceiveLoginResponse(loginResponse: LoginResponse?) {
    
    
    if (loginResponse?.errorMessage == nil && loginResponse?.data != nil) {
      
      //          let personalDetails = PersonalDetailsViewController()
      //          self.navigationController?.pushViewController(personalDetails, animated: true)
      
      debugPrint("Moving to the employee's screen...")
      
    } else if (loginResponse?.errorMessage != nil) {
      
      guard let errorMessage = loginResponse?.errorMessage else {
        return
      }
      let alert = AlertService.alert(with: Constants.ErrorAlertTitle,
                                     message: errorMessage,
                                     alertStyle: .alert)
      
      self.present(alert, animated: true)
    }
  }
}

