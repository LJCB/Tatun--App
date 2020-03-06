//
//  SalesDayProtocols.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol SalesDayViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: SalesDayPresenterProtocol? { get set }
}

protocol SalesDayWireFrameProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createSalesDayModule() -> UIViewController
}

protocol SalesDayPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: SalesDayViewProtocol? { get set }
    var interactor: SalesDayInteractorInputProtocol? { get set }
    var wireFrame: SalesDayWireFrameProtocol? { get set }
    
    func viewDidLoad()
}

protocol SalesDayInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol SalesDayInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: SalesDayInteractorOutputProtocol? { get set }
    var localDatamanager: SalesDayLocalDataManagerInputProtocol? { get set }
    var remoteDatamanager: SalesDayRemoteDataManagerInputProtocol? { get set }
}

protocol SalesDayDataManagerInputProtocol: class {
    // INTERACTOR -> DATAMANAGER
}

protocol SalesDayRemoteDataManagerInputProtocol: class {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: SalesDayRemoteDataManagerOutputProtocol? { get set }
}

protocol SalesDayRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol SalesDayLocalDataManagerInputProtocol: class {
    // INTERACTOR -> LOCALDATAMANAGER
}
