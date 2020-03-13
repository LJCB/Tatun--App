//
//  RegisterPresenter.swift
//  Tatun
//
//  Created by LuisCS on 02/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class RegisterPresenter  {
  
  // MARK: Properties
  weak var view: RegisterViewProtocol?
  var interactor: RegisterInteractorInputProtocol?
  var wireFrame: RegisterWireFrameProtocol?
  
}

extension RegisterPresenter: RegisterPresenterProtocol {
  // TODO: implement presenter methods
  func viewDidLoad() {
    view?.set_layout()
    view?.set_google_maps_delegate()
    view?.get_user_location()
    view?.set_picker_category()
    interactor?.get_categories()
    
  }
}

extension RegisterPresenter: RegisterInteractorOutputProtocol {
  func show_data_categories(categories: [category]) {
    view?.reload_picker_data(categories: categories)
  }
}
