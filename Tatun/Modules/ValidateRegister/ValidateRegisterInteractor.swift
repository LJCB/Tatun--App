//
//  ValidateRegisterInteractor.swift
//  Tatun
//
//  Created by LuisCS on 13/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class ValidateRegisterInteractor: ValidateRegisterInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: ValidateRegisterInteractorOutputProtocol?
    var localDatamanager: ValidateRegisterLocalDataManagerInputProtocol?
    var remoteDatamanager: ValidateRegisterRemoteDataManagerInputProtocol?

}

extension ValidateRegisterInteractor: ValidateRegisterRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
