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
  // TODO: implement interactor output methods
}
