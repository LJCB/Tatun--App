//
//  WaiterListInteractor.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class WaiterListInteractor: WaiterListInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: WaiterListInteractorOutputProtocol?
    var localDatamanager: WaiterListLocalDataManagerInputProtocol?
    var remoteDatamanager: WaiterListRemoteDataManagerInputProtocol?

}

extension WaiterListInteractor: WaiterListRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
