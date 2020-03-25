//
//  SplashInteractor.swift
//  Tatun
//
//  Created by LuisCS on 17/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import FirebaseAuth

class SplashInteractor: SplashInteractorInputProtocol {
  // MARK: Properties
  weak var presenter: SplashInteractorOutputProtocol?
  var localDatamanager: SplashLocalDataManagerInputProtocol?
  var remoteDatamanager: SplashRemoteDataManagerInputProtocol?
  
  func validate_active_Sesion() {
    remoteDatamanager?.get_current_user()
  }
}

extension SplashInteractor: SplashRemoteDataManagerOutputProtocol {
  func user_is_active(_ is_active: Bool) {
    if is_active{
      presenter?.user_active()
    }else{
      presenter?.user_inactive()
    }
  }
}
