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
  func go_waiter_login() {
    wireFrame?.show_waiter_login(from: view!)
  }
  
  func viewDidLoad() {
  }
}

extension LoginAdminPresenter: LoginAdminInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
