//
//  TablesListInteractor.swift
//  Tatun
//
//  Created by LuisCS on 09/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class TablesListInteractor: TablesListInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: TablesListInteractorOutputProtocol?
    var localDatamanager: TablesListLocalDataManagerInputProtocol?
    var remoteDatamanager: TablesListRemoteDataManagerInputProtocol?

}

extension TablesListInteractor: TablesListRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
