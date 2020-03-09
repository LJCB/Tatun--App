//
//  SalesMonthPresenter.swift
//  Tatun
//
//  Created by LuisCS on 09/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class SalesMonthPresenter  {
  
  // MARK: Properties
  weak var view: SalesMonthViewProtocol?
  var interactor: SalesMonthInteractorInputProtocol?
  var wireFrame: SalesMonthWireFrameProtocol?
  
}

extension SalesMonthPresenter: SalesMonthPresenterProtocol {
  func go_sales_day() {
    wireFrame?.show_sales_day(from: view!)
  }
  
  func menu_action() {
    view?.animate_menu()
  }

  func viewDidLoad() {
    view?.set_layout()
    view?.add_menu()
  }
}

extension SalesMonthPresenter: SalesMonthInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
