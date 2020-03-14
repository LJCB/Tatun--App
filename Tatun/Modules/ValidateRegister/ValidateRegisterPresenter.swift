//
//  ValidateRegisterPresenter.swift
//  Tatun
//
//  Created by LuisCS on 13/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class ValidateRegisterPresenter  {
    
    // MARK: Properties
    weak var view: ValidateRegisterViewProtocol?
    var interactor: ValidateRegisterInteractorInputProtocol?
    var wireFrame: ValidateRegisterWireFrameProtocol?
    
}

extension ValidateRegisterPresenter: ValidateRegisterPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension ValidateRegisterPresenter: ValidateRegisterInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
