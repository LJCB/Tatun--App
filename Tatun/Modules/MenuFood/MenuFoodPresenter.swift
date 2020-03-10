//
//  MenuFoodPresenter.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class MenuFoodPresenter  {
  
  // MARK: Properties
  weak var view: MenuFoodViewProtocol?
  var interactor: MenuFoodInteractorInputProtocol?
  var wireFrame: MenuFoodWireFrameProtocol?
  
}

extension MenuFoodPresenter: MenuFoodPresenterProtocol {
  func menu_action() {
    view?.animate_menu()
  }
  
  func viewDidLoad() {
    view?.add_menu()
    view?.set_tab_bar_delegate()
  }
}

extension MenuFoodPresenter: MenuFoodInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
