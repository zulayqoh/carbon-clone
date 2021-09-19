//
//  RegisterView+Extension.swift
//  CarbonSignup
//
//  Created by Decagon on 28/08/2021.
//

import Foundation
import UIKit

extension RegisterViewController: signUpModelDelegate {
  func didReceiveSignUpResponse(signUpResponse: SignUpResponse?) {
    
    if (signUpResponse?.errorMessage == nil && signUpResponse?.data != nil) {
      
      //          let personalDetails = PersonalDetailsViewController()
      //          self.navigationController?.pushViewController(personalDetails, animated: true)
      
      debugPrint("Moving to the employee's screen...")
      
    } else if (signUpResponse?.errorMessage != nil) {
      
      guard let errorMessage = signUpResponse?.errorMessage else {
        return
      }
      let alert = AlertService.alert(with: Constants.ErrorAlertTitle,
                                     message: errorMessage,
                                     alertStyle: .alert)
      
      self.present(alert, animated: true)
    }
  }
}

