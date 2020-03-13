//
//  RegisterInteractor.swift
//  Tatun
//
//  Created by LuisCS on 02/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class RegisterInteractor: RegisterInteractorInputProtocol {
  
  
  
  // MARK: Properties
  weak var presenter: RegisterInteractorOutputProtocol?
  var localDatamanager: RegisterLocalDataManagerInputProtocol?
  var remoteDatamanager: RegisterRemoteDataManagerInputProtocol?
  
  func get_categories() {
    remoteDatamanager?.get_categories_from_server()
  }
  
  func validate_complete_data(name: String, phone: String, direction: String, password: String, open_hour: String, close_hour: String, category_id: Int, latitude: String, longitude: String) {
    if name == "" || phone == "" || direction == "" || password == "" || open_hour == "" || close_hour == "" || category_id == 0 || latitude == "" || longitude == ""{
      presenter?.incomplete_data()
    }else{
      
    }
  }
}

extension RegisterInteractor: RegisterRemoteDataManagerOutputProtocol {
  func categories_recived(categories: [category]) {
    presenter?.show_data_categories(categories: categories)
    print("Categorias obtenidas: \(categories.count)")
  }
}
