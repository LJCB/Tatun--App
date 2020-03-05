//
//  OrderListInteractor.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class OrderListInteractor: OrderListInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: OrderListInteractorOutputProtocol?
    var localDatamanager: OrderListLocalDataManagerInputProtocol?
    var remoteDatamanager: OrderListRemoteDataManagerInputProtocol?

}

extension OrderListInteractor: OrderListRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
