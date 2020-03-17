//
//  LoginAdminPresenter.swift
//  Tatun
//
//  Created by LuisCS on 28/02/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class LoginAdminPresenter  {
  
  // MARK: Properties
  weak var view: LoginAdminViewProtocol?
  var interactor: LoginAdminInteractorInputProtocol?
  var wireFrame: LoginAdminWireFrameProtocol?
}

extension LoginAdminPresenter: LoginAdminPresenterProtocol {
  func get_login_data(email: String, password: String, bussines_code: String) {
    interactor?.validate_login_data(email: email, password: password, bussines_code: bussines_code)
  }
  
  func go_order_list() {
    wireFrame?.show_order_list(from: view!)
  }
  
  func go_request_code() {
    wireFrame?.show_form_request_code(from: view!)
  }
  
  func go_register() {
    wireFrame?.show_register(from: view!)
  }
  
  func go_waiter_login() {
    wireFrame?.show_waiter_login(from: view!)
  }
  
  func viewDidLoad() {
    view?.set_layout()
  }
}

extension LoginAdminPresenter: LoginAdminInteractorOutputProtocol {
  func login_error(message: String) {
    view?.show_alert(message: message, title: "Ocurrió un error al ingresar")
  }
  
  func login_success() {
    wireFrame?.show_order_list(from: view!)
  }
  
  func incomplete_data() {
    view?.show_alert(message: "Asegúrate de ingresar los datos soliciatados", title: "Datos incompletos")
  }
}
