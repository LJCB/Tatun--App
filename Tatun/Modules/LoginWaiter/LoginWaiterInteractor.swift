//
//  LoginWaiterInteractor.swift
//  Tatun
//
//  Created by LuisCS on 04/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class LoginWaiterInteractor: LoginWaiterInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: LoginWaiterInteractorOutputProtocol?
    var localDatamanager: LoginWaiterLocalDataManagerInputProtocol?
    var remoteDatamanager: LoginWaiterRemoteDataManagerInputProtocol?

}

extension LoginWaiterInteractor: LoginWaiterRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
