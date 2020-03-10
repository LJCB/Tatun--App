//
//  MenuPresenter.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class MenuPresenter  {
  
  // MARK: Properties
  weak var view: MenuViewProtocol?
  var interactor: MenuInteractorInputProtocol?
  var wireFrame: MenuWireFrameProtocol?
}

extension MenuPresenter: MenuPresenterProtocol {
  func go_order_list() {
    wireFrame?.show_order_list(from: view!)
  }
  
  func go_sales() {
    wireFrame?.show_sales_day(from: view!)
  }
  
  func go_account() {
    wireFrame?.show_account(from: view!)
  }
  
  func go_waiters_list() {
    wireFrame?.show_waiters_list(from: view!)
  }
  
  
  func viewDidLoad() {
    view?.set_layout()
  }
  
  func go_menu() {
    wireFrame?.show_menu(from: view!)
   }
}

extension MenuPresenter: MenuInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
