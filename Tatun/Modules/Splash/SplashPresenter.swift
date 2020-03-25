//
//  SplashPresenter.swift
//  Tatun
//
//  Created by LuisCS on 17/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class SplashPresenter  {
  
  // MARK: Properties
  weak var view: SplashViewProtocol?
  var interactor: SplashInteractorInputProtocol?
  var wireFrame: SplashWireFrameProtocol?
}

extension SplashPresenter: SplashPresenterProtocol {
  func viewDidLoad() {
    interactor?.validate_active_Sesion()
  }
}

extension SplashPresenter: SplashInteractorOutputProtocol {
  func user_active() {
    wireFrame?.show_order_list(from: view!)
  }
  
  func user_inactive() {
    wireFrame?.show_login(from: view!)
  }
}
