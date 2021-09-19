//
//  LoginValidation.swift
//  CarbonSignup
//
//  Created by Decagon on 26/08/2021.
//

import Foundation

struct LoginValidation {
    
    func validate(loginRequest: LoginRequest) -> ValidationResult {
        
        if (loginRequest.email!.isEmpty) {
            return ValidationResult(success: false, error: "User email cannot be empty!")
        }
        
        if (loginRequest.password!.isEmpty) {
            return ValidationResult(success: false, error: "User password is empty!")
        }
        
        return ValidationResult(success: true, error: nil)
    }
}
