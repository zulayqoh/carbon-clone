//
//  File.swift
//  CarbonSignup
//
//  Created by Decagon on 27/08/2021.
//

import Foundation
struct signUpResource {
    
    func signUpUser(signUpRequest: SignUpRequest, completionHandler: @escaping (_ result: SignUpResponse?) -> Void) {
        
        let signUpURL = URL(string: ApiEndpoints.register)!
        let httpUtility = HTTPUtility()
        
        do {
            let signUpPostBody = try JSONEncoder().encode(signUpRequest)
            httpUtility.postAPIData(requestUrl: signUpURL, requestBody: signUpPostBody, resultType: SignUpResponse.self) { signUpAPIResponse in
                
                completionHandler(signUpAPIResponse)
            }
            
        } catch let error {
            debugPrint(error)
        }
    }
}
