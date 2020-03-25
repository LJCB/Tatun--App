//
//  SplashRemoteDataManager.swift
//  Tatun
//
//  Created by LuisCS on 17/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import FirebaseAuth

class SplashRemoteDataManager:SplashRemoteDataManagerInputProtocol {
  
  var remoteRequestHandler: SplashRemoteDataManagerOutputProtocol?
  
  func get_current_user() {
    let user_data = Auth.auth().currentUser
    print("User_Data: \(user_data)")
    if  user_data != nil{
      remoteRequestHandler?.user_is_active(true)
    }else{
      remoteRequestHandler?.user_is_active(false)
    }
  }
}
