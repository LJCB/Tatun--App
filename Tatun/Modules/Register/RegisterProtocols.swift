//
//  RegisterProtocols.swift
//  Tatun
//
//  Created by LuisCS on 02/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol RegisterViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: RegisterPresenterProtocol? { get set }
  func set_layout()
}

protocol RegisterWireFrameProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createRegisterModule() -> UIViewController
}

protocol RegisterPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: RegisterViewProtocol? { get set }
  var interactor: RegisterInteractorInputProtocol? { get set }
  var wireFrame: RegisterWireFrameProtocol? { get set }
  
  func viewDidLoad()
}

protocol RegisterInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol RegisterInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: RegisterInteractorOutputProtocol? { get set }
  var localDatamanager: RegisterLocalDataManagerInputProtocol? { get set }
  var remoteDatamanager: RegisterRemoteDataManagerInputProtocol? { get set }
}

protocol RegisterDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol RegisterRemoteDataManagerInputProtocol: class {
  // INTERACTOR -> REMOTEDATAMANAGER
  var remoteRequestHandler: RegisterRemoteDataManagerOutputProtocol? { get set }
}

protocol RegisterRemoteDataManagerOutputProtocol: class {
  // REMOTEDATAMANAGER -> INTERACTOR
}

protocol RegisterLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}
