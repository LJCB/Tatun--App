//
//  RegisterPresenter.swift
//  Tatun
//
//  Created by LuisCS on 02/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class RegisterPresenter  {
  
  // MARK: Properties
  weak var view: RegisterViewProtocol?
  var interactor: RegisterInteractorInputProtocol?
  var wireFrame: RegisterWireFrameProtocol?
  
}

extension RegisterPresenter: RegisterPresenterProtocol {
  func get_new_data(name: String, email:String, phone: String, direction: String, password: String, open_hour: String, close_hour: String, category_id: Int, latitude: String, longitude: String) {
    interactor?.validate_complete_data(name: name, email: email, phone: phone, direction: direction, password: password, open_hour: open_hour, close_hour: close_hour, category_id: category_id, latitude: latitude, longitude: longitude)
  }
  
  
  func viewDidLoad() {
    view?.set_layout()
    view?.set_google_maps_delegate()
    view?.get_user_location()
    view?.set_pickers()
    interactor?.get_categories()
    
  }
}

extension RegisterPresenter: RegisterInteractorOutputProtocol {
  func register_error(message: String) {
    view?.show_warning_alert(message: message)
  }
  
  func register_success() {
    wireFrame?.show_order_list(from: view!)
  }
  
  func incomplete_data() {
    view?.show_warning_alert(message: "Asegúrate de ingresar la información solicitada")
  }
  
  func show_data_categories(categories: [category]) {
    view?.reload_picker_data(categories: categories)
  }
}
