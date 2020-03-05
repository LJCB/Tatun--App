//
//  NewPasswordInteractor.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class NewPasswordInteractor: NewPasswordInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: NewPasswordInteractorOutputProtocol?
    var localDatamanager: NewPasswordLocalDataManagerInputProtocol?
    var remoteDatamanager: NewPasswordRemoteDataManagerInputProtocol?

}

extension NewPasswordInteractor: NewPasswordRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
