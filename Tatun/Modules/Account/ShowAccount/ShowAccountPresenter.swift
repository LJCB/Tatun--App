//
//  ShowAccountPresenter.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class ShowAccountPresenter  {
  
  // MARK: Properties
  weak var view: ShowAccountViewProtocol?
  var interactor: ShowAccountInteractorInputProtocol?
  var wireFrame: ShowAccountWireFrameProtocol?
  
}

extension ShowAccountPresenter: ShowAccountPresenterProtocol {
  func menu_action() {
    view?.animate_menu()
  }
  
  func viewDidLoad() {
    view?.add_menu()
  }
}

extension ShowAccountPresenter: ShowAccountInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
