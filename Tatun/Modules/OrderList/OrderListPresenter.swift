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
  
  func viewDidLoad() {
    print("Ejecutand setlayout")
    view?.set_layout()
  }
  
  func go_new_order() {
    wireFrame?.show_form_new_order(from: view!)
  }
}

extension OrderListPresenter: OrderListInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
