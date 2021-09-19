//
//  SignupValidation.swift
//  CarbonSignup
//
//  Created by Decagon on 27/08/2021.
//

import Foundation

import UIKit

let registerViewController: UIViewController = RegisterViewController()

struct SignUpValidation {
  
  func validate(SignUpRequest: SignUpRequest) -> ValidationResult {
    
    if (SignUpRequest.firstName!.isEmpty) {
      return ValidationResult(success: false, error: "first name required!")
    }
    
    if (SignUpRequest.middleName!.isEmpty) {
      return ValidationResult(success: false, error: "middle name required")
    }
    
    if (SignUpRequest.lastName!.isEmpty) {
      return ValidationResult(success: false, error: "surname name required")
    }
    
    if (SignUpRequest.emailAddress!.isEmpty) {
      return ValidationResult(success: false, error: "email address required")
    }
    
    if (SignUpRequest.password!.isEmpty) {
      return ValidationResult(success: false, error: "password name required")
    }
    
    if (SignUpRequest.gender!.isEmpty) {
      return ValidationResult(success: false, error: "gender name required")
    }
    
    if (SignUpRequest.phonenumber!.isEmpty) {
      return ValidationResult(success: false, error: "phone number name required")
    }
    
    if(SignUpRequest.password!.count < 9){
      return ValidationResult(success: false, error: "Password must be greater than 8 ")
    }
    
    if(SignUpRequest.emailAddress!.contains("@.com")){
      return ValidationResult(success: false, error: "Invalid email format")
    }
    
    return ValidationResult(success: true, error: "incorrect")
  }
}
