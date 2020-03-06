//
//  MenuFoodProtocols.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol MenuFoodViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: MenuFoodPresenterProtocol? { get set }
}

protocol MenuFoodWireFrameProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createMenuFoodModule() -> UIViewController
}

protocol MenuFoodPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: MenuFoodViewProtocol? { get set }
    var interactor: MenuFoodInteractorInputProtocol? { get set }
    var wireFrame: MenuFoodWireFrameProtocol? { get set }
    
    func viewDidLoad()
}

protocol MenuFoodInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol MenuFoodInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: MenuFoodInteractorOutputProtocol? { get set }
    var localDatamanager: MenuFoodLocalDataManagerInputProtocol? { get set }
    var remoteDatamanager: MenuFoodRemoteDataManagerInputProtocol? { get set }
}

protocol MenuFoodDataManagerInputProtocol: class {
    // INTERACTOR -> DATAMANAGER
}

protocol MenuFoodRemoteDataManagerInputProtocol: class {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: MenuFoodRemoteDataManagerOutputProtocol? { get set }
}

protocol MenuFoodRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol MenuFoodLocalDataManagerInputProtocol: class {
    // INTERACTOR -> LOCALDATAMANAGER
}
