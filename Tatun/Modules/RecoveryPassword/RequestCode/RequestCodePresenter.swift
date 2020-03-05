//
//  RequestCodePresenter.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class RequestCodePresenter  {
  
  // MARK: Properties
  weak var view: RequestCodeViewProtocol?
  var interactor: RequestCodeInteractorInputProtocol?
  var wireFrame: RequestCodeWireFrameProtocol?
  
}

extension RequestCodePresenter: RequestCodePresenterProtocol {
  
  func viewDidLoad() {
    view?.set_layout()
  }
  
  func cancel_action() {
    view?.dissmis_view()
  }
}

extension RequestCodePresenter: RequestCodeInteractorOutputProtocol {
  // TODO: implement interactor output methods
}
