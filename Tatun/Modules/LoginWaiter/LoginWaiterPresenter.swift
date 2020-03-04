//
//  LoginWaiterPresenter.swift
//  Tatun
//
//  Created by LuisCS on 04/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class LoginWaiterPresenter  {
  
  // MARK: Properties
  weak var view: LoginWaiterViewProtocol?
  var interactor: LoginWaiterInteractorInputProtocol?
  var wireFrame: LoginWaiterWireFrameProtocol?
  
}

extension LoginWaiterPresenter: LoginWaiterPresenterProtocol {
  
  // TODO: implement presenter methods
  func viewDidLoad() {
  }
  
  func go_admin_login() {
    wireFrame?.show_admin_login(from: view!)
  }
}

extension LoginWaiterPresenter: LoginWaiterInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
