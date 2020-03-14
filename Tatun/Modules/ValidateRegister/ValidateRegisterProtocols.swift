//
//  ValidateRegisterProtocols.swift
//  Tatun
//
//  Created by LuisCS on 13/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol ValidateRegisterViewProtocol: class {
    // PRESENTER -> VIEW
    var presenter: ValidateRegisterPresenterProtocol? { get set }
}

protocol ValidateRegisterWireFrameProtocol: class {
    // PRESENTER -> WIREFRAME
    static func createValidateRegisterModule() -> UIViewController
}

protocol ValidateRegisterPresenterProtocol: class {
    // VIEW -> PRESENTER
    var view: ValidateRegisterViewProtocol? { get set }
    var interactor: ValidateRegisterInteractorInputProtocol? { get set }
    var wireFrame: ValidateRegisterWireFrameProtocol? { get set }
    
    func viewDidLoad()
}

protocol ValidateRegisterInteractorOutputProtocol: class {
// INTERACTOR -> PRESENTER
}

protocol ValidateRegisterInteractorInputProtocol: class {
    // PRESENTER -> INTERACTOR
    var presenter: ValidateRegisterInteractorOutputProtocol? { get set }
    var localDatamanager: ValidateRegisterLocalDataManagerInputProtocol? { get set }
    var remoteDatamanager: ValidateRegisterRemoteDataManagerInputProtocol? { get set }
}

protocol ValidateRegisterDataManagerInputProtocol: class {
    // INTERACTOR -> DATAMANAGER
}

protocol ValidateRegisterRemoteDataManagerInputProtocol: class {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: ValidateRegisterRemoteDataManagerOutputProtocol? { get set }
}

protocol ValidateRegisterRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol ValidateRegisterLocalDataManagerInputProtocol: class {
    // INTERACTOR -> LOCALDATAMANAGER
}
