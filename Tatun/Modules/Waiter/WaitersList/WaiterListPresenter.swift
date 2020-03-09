//
//  WaiterListPresenter.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class WaiterListPresenter  {
  
  // MARK: Properties
  weak var view: WaiterListViewProtocol?
  var interactor: WaiterListInteractorInputProtocol?
  var wireFrame: WaiterListWireFrameProtocol?
  
}

extension WaiterListPresenter: WaiterListPresenterProtocol {
  
  func viewDidLoad() {
    view?.add_menu()
  }
  
  func menu_action() {
    view?.animate_menu()
  }
}

extension WaiterListPresenter: WaiterListInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
