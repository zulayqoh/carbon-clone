//
//  UserDefaultUtility.swift
//  CarbonSignup
//
//  Created by Decagon on 26/08/2021.
//

import Foundation

struct UserDefaultUtility {
  static func saveUserID(userId: String) {
    UserDefaults.standard.setValue(userId, forKey: "userID")
  }
  
  static func getUserID() -> String {
    return UserDefaults.standard.value(forKey: "userID") as! String
  }
}
