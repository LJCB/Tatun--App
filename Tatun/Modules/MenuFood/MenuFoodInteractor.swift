//
//  MenuFoodInteractor.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class MenuFoodInteractor: MenuFoodInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: MenuFoodInteractorOutputProtocol?
    var localDatamanager: MenuFoodLocalDataManagerInputProtocol?
    var remoteDatamanager: MenuFoodRemoteDataManagerInputProtocol?

}

extension MenuFoodInteractor: MenuFoodRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
