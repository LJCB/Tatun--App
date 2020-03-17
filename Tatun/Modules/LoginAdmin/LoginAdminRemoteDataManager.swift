//
//  LoginAdminRemoteDataManager.swift
//  Tatun
//
//  Created by LuisCS on 28/02/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class LoginAdminRemoteDataManager:LoginAdminRemoteDataManagerInputProtocol {
  var remoteRequestHandler: LoginAdminRemoteDataManagerOutputProtocol?
  
  func request_token(email: String, password: String) {
    GlobalFunctions.sharedInstance.login(email: email, password: password, success: {
      self.remoteRequestHandler?.login_success()
    }) { (error_message) in
      self.remoteRequestHandler?.login_error(message: error_message)
    }
  }
}
