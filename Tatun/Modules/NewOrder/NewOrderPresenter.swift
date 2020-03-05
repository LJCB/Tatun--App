//
//  NewOrderPresenter.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class NewOrderPresenter  {
  
  // MARK: Properties
  weak var view: NewOrderViewProtocol?
  var interactor: NewOrderInteractorInputProtocol?
  var wireFrame: NewOrderWireFrameProtocol?
  
}

extension NewOrderPresenter: NewOrderPresenterProtocol {
  // TODO: implement presenter methods
  func viewDidLoad() {
    view?.set_layout()
  }
}

extension NewOrderPresenter: NewOrderInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
