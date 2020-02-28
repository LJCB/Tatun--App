//
//  LoginAdminPresenter.swift
//  Tatun
//
//  Created by LuisCS on 28/02/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class LoginAdminPresenter  {
    
    // MARK: Properties
    weak var view: LoginAdminViewProtocol?
    var interactor: LoginAdminInteractorInputProtocol?
    var wireFrame: LoginAdminWireFrameProtocol?
    
}

extension LoginAdminPresenter: LoginAdminPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension LoginAdminPresenter: LoginAdminInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
