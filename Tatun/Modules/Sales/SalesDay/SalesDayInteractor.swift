//
//  SalesDayInteractor.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class SalesDayInteractor: SalesDayInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: SalesDayInteractorOutputProtocol?
    var localDatamanager: SalesDayLocalDataManagerInputProtocol?
    var remoteDatamanager: SalesDayRemoteDataManagerInputProtocol?

}

extension SalesDayInteractor: SalesDayRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
