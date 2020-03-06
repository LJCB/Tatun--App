//
//  WaiterListProtocols.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol WaiterListViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: WaiterListPresenterProtocol? { get set }
}

protocol WaiterListWireFrameProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createWaiterListModule() -> UIViewController
}

protocol WaiterListPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: WaiterListViewProtocol? { get set }
    var interactor: WaiterListInteractorInputProtocol? { get set }
    var wireFrame: WaiterListWireFrameProtocol? { get set }
    
    func viewDidLoad()
}

protocol WaiterListInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol WaiterListInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: WaiterListInteractorOutputProtocol? { get set }
    var localDatamanager: WaiterListLocalDataManagerInputProtocol? { get set }
    var remoteDatamanager: WaiterListRemoteDataManagerInputProtocol? { get set }
}

protocol WaiterListDataManagerInputProtocol: class {
    // INTERACTOR -> DATAMANAGER
}

protocol WaiterListRemoteDataManagerInputProtocol: class {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: WaiterListRemoteDataManagerOutputProtocol? { get set }
}

protocol WaiterListRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol WaiterListLocalDataManagerInputProtocol: class {
    // INTERACTOR -> LOCALDATAMANAGER
}
