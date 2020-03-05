//
//  NewPasswordPresenter.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class NewPasswordPresenter  {
  
  // MARK: Properties
  weak var view: NewPasswordViewProtocol?
  var interactor: NewPasswordInteractorInputProtocol?
  var wireFrame: NewPasswordWireFrameProtocol?
  
}

extension NewPasswordPresenter: NewPasswordPresenterProtocol {
  func go_login() {
    wireFrame?.show_login(from: view!)
  }
  
  func viewDidLoad() {
  }
}

extension NewPasswordPresenter: NewPasswordInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
