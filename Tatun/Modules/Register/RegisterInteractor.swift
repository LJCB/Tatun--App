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
}

extension RegisterInteractor: RegisterRemoteDataManagerOutputProtocol {
  func categories_recived(categories: [category]) {
    presenter?.show_data_categories(categories: categories)
    print("Categorias obtenidas: \(categories.count)")
  }
}
