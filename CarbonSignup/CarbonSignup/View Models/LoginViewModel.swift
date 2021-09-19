//
//  LoginViewModel.swift
//  CarbonSignup
//
//  Created by Decagon on 27/08/2021.
//

import Foundation

protocol LoginViewModelDelegate {
    func didReceiveLoginResponse(loginResponse: LoginResponse?)
}

class LoginViewModel {
    
    var delegate: LoginViewModelDelegate?
    
    func loginUser(loginRequest: LoginRequest) {
        
        let validationResult = LoginValidation().validate(loginRequest: loginRequest)
        
        if (validationResult.success) {
            
            //MARK: - Use loginResult to call Login API
            let loginResource = LoginResource()
            loginResource.loginUser(loginRequest: loginRequest) { (loginAPIResponse) in
              
              guard
                loginAPIResponse?.errorMessage == nil,
                loginAPIResponse?.data != nil,
                let userID = loginAPIResponse?.data?.id else {
                return
              }
              
              UserDefaultUtility.saveUserID(userId: userID)
                
                DispatchQueue.main.async {
                    self.delegate?.didReceiveLoginResponse(loginResponse: loginAPIResponse)
                }
            }
        }
        
        self.delegate?.didReceiveLoginResponse(loginResponse:
                                                LoginResponse(errorMessage:
                                                                validationResult.error,
                                                              data: nil))
    }
}
