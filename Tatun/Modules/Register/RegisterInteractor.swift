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
  
  func validate_complete_data(name: String, email: String, phone: String, direction: String, password: String, open_hour: String, close_hour: String, category_id: Int, latitude: String, longitude: String) {
    if name == "" || email == "" || phone == "" || direction == "" || password == "" || open_hour == "" || close_hour == "" || category_id == 0 || latitude == "" || longitude == ""{
      presenter?.incomplete_data()
    }else{
      remoteDatamanager?.register_bussines_access(name: name, email: email, phone: phone, direction: direction, password: password, open_hour: open_hour, close_hour: close_hour, category_id: category_id, latitude: latitude, longitude: longitude)

    }
  }
}

extension RegisterInteractor: RegisterRemoteDataManagerOutputProtocol {
  func user_auth_created(name: String, email: String, phone: String, direction: String, password: String, open_hour: String, close_hour: String, category_id: Int, latitude: String, longitude: String) {
    remoteDatamanager?.store_bussines_data(name: name, email: email,phone: phone, direction: direction, password: password, open_hour: open_hour, close_hour: close_hour, category_id: category_id, latitude: latitude, longitude: longitude)
  }
  
  func register_error(message: String) {
    presenter?.register_error(message: message)
  }
  
  func register_success() {
    presenter?.register_success()
  }
  
  func categories_recived(categories: [category]) {
    presenter?.show_data_categories(categories: categories)
    print("Categorias obtenidas: \(categories.count)")
  }
}
