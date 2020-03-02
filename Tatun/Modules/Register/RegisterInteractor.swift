//
//  RegisterInteractor.swift
//  Tatun
//
//  Created by LuisCS on 02/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class RegisterInteractor: RegisterInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: RegisterInteractorOutputProtocol?
    var localDatamanager: RegisterLocalDataManagerInputProtocol?
    var remoteDatamanager: RegisterRemoteDataManagerInputProtocol?

}

extension RegisterInteractor: RegisterRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
