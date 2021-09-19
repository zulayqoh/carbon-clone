//
//  SignupResponse.swift
//  CarbonSignup
//
//  Created by Decagon on 27/08/2021.
//

import Foundation

struct SignUpResponse: Decodable {

    var errorMessage: String?
    let data: LoginData?
}

struct LoginData: Decodable {
  let password: String
  let id: String
  let email: String
  
}
