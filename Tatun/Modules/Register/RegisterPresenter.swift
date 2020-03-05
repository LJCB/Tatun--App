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
    }
}

extension RegisterPresenter: RegisterInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
