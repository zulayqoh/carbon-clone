//
//  SignupRequest.swift
//  CarbonSignup
//
//  Created by Decagon on 27/08/2021.
//

import Foundation

struct SignUpRequest: Encodable {
  
  var firstName: String?
  var middleName: String?
  var lastName:  String?
  var emailAddress: String?
  var password: String?
  var gender: String?
  var phonenumber: String?
}

