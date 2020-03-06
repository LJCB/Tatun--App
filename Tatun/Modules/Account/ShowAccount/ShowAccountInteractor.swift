//
//  ShowAccountInteractor.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class ShowAccountInteractor: ShowAccountInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: ShowAccountInteractorOutputProtocol?
    var localDatamanager: ShowAccountLocalDataManagerInputProtocol?
    var remoteDatamanager: ShowAccountRemoteDataManagerInputProtocol?

}

extension ShowAccountInteractor: ShowAccountRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
