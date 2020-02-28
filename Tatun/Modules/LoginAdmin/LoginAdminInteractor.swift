//
//  LoginAdminInteractor.swift
//  Tatun
//
//  Created by LuisCS on 28/02/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class LoginAdminInteractor: LoginAdminInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: LoginAdminInteractorOutputProtocol?
    var localDatamanager: LoginAdminLocalDataManagerInputProtocol?
    var remoteDatamanager: LoginAdminRemoteDataManagerInputProtocol?

}

extension LoginAdminInteractor: LoginAdminRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
