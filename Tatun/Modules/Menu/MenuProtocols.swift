//
//  MenuProtocols.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol MenuViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: MenuPresenterProtocol? { get set }
}

protocol MenuWireFrameProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createMenuModule() -> UIViewController
}

protocol MenuPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: MenuViewProtocol? { get set }
    var interactor: MenuInteractorInputProtocol? { get set }
    var wireFrame: MenuWireFrameProtocol? { get set }
    
    func viewDidLoad()
}

protocol MenuInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol MenuInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: MenuInteractorOutputProtocol? { get set }
    var localDatamanager: MenuLocalDataManagerInputProtocol? { get set }
    var remoteDatamanager: MenuRemoteDataManagerInputProtocol? { get set }
}

protocol MenuDataManagerInputProtocol: class {
    // INTERACTOR -> DATAMANAGER
}

protocol MenuRemoteDataManagerInputProtocol: class {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: MenuRemoteDataManagerOutputProtocol? { get set }
}

protocol MenuRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol MenuLocalDataManagerInputProtocol: class {
    // INTERACTOR -> LOCALDATAMANAGER
}
