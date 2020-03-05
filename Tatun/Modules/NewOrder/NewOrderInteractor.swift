//
//  NewOrderInteractor.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class NewOrderInteractor: NewOrderInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: NewOrderInteractorOutputProtocol?
    var localDatamanager: NewOrderLocalDataManagerInputProtocol?
    var remoteDatamanager: NewOrderRemoteDataManagerInputProtocol?

}

extension NewOrderInteractor: NewOrderRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
