//
//  OrderListPresenter.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class OrderListPresenter  {
  
  // MARK: Properties
  weak var view: OrderListViewProtocol?
  var interactor: OrderListInteractorInputProtocol?
  var wireFrame: OrderListWireFrameProtocol?
  
}

extension OrderListPresenter: OrderListPresenterProtocol {
  func menu_action() {
    view?.animate_menu()
  }
  
  
  func viewDidLoad() {
    view?.set_layout()
    view?.add_menu()
  }
  
  func go_new_order() {
    wireFrame?.show_form_new_order(from: view!)
  }
}

extension OrderListPresenter: OrderListInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
