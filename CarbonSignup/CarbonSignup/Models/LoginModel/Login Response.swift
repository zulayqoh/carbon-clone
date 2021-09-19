//
//  Login Response.swift
//  CarbonSignup
//
//  Created by Decagon on 26/08/2021.
//

import Foundation

struct LoginResponse: Decodable {

    let errorMessage: String?
    let data: LoginResponseData?
}

struct LoginResponseData: Decodable {
    let id: String
    let email: String
    let password: String
}
