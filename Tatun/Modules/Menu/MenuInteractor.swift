//
//  MenuInteractor.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class MenuInteractor: MenuInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: MenuInteractorOutputProtocol?
    var localDatamanager: MenuLocalDataManagerInputProtocol?
    var remoteDatamanager: MenuRemoteDataManagerInputProtocol?

}

extension MenuInteractor: MenuRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
