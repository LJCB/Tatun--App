//
//  LoginAdminInteractor.swift
//  Tatun
//
//  Created by LuisCS on 28/02/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class LoginAdminInteractor: LoginAdminInteractorInputProtocol {
  // MARK: Properties
  weak var presenter: LoginAdminInteractorOutputProtocol?
  var localDatamanager: LoginAdminLocalDataManagerInputProtocol?
  var remoteDatamanager: LoginAdminRemoteDataManagerInputProtocol?
  
  func validate_login_data(email: String, password: String, bussines_code: String) {
    if email.split(separator: " ").count == 0 || password.split(separator: " ").count == 0 || bussines_code.split(separator: " ").count == 0 {
      presenter?.incomplete_data()
    }else{
      remoteDatamanager?.request_token(email: email, password: password)
    }
  }
}

extension LoginAdminInteractor: LoginAdminRemoteDataManagerOutputProtocol {
  func login_error(message: String) {
    presenter?.login_error(message: message)
  }
  
  func login_success() {
    presenter?.login_success()
  }
}
