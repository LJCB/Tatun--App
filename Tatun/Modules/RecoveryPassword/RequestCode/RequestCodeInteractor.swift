//
//  RequestCodeInteractor.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class RequestCodeInteractor: RequestCodeInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: RequestCodeInteractorOutputProtocol?
    var localDatamanager: RequestCodeLocalDataManagerInputProtocol?
    var remoteDatamanager: RequestCodeRemoteDataManagerInputProtocol?

}

extension RequestCodeInteractor: RequestCodeRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
