//
//  SalesMonthInteractor.swift
//  Tatun
//
//  Created by LuisCS on 09/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class SalesMonthInteractor: SalesMonthInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: SalesMonthInteractorOutputProtocol?
    var localDatamanager: SalesMonthLocalDataManagerInputProtocol?
    var remoteDatamanager: SalesMonthRemoteDataManagerInputProtocol?

}

extension SalesMonthInteractor: SalesMonthRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
