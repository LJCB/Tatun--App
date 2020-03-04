//
//  LoginWaiterProtocols.swift
//  Tatun
//
//  Created by LuisCS on 04/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol LoginWaiterViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: LoginWaiterPresenterProtocol? { get set }
}

protocol LoginWaiterWireFrameProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createLoginWaiterModule() -> UIViewController
  func show_admin_login(from view: LoginWaiterViewProtocol)
}

protocol LoginWaiterPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: LoginWaiterViewProtocol? { get set }
  var interactor: LoginWaiterInteractorInputProtocol? { get set }
  var wireFrame: LoginWaiterWireFrameProtocol? { get set }
  
  func viewDidLoad()
  func go_admin_login ()
}

protocol LoginWaiterInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol LoginWaiterInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: LoginWaiterInteractorOutputProtocol? { get set }
  var localDatamanager: LoginWaiterLocalDataManagerInputProtocol? { get set }
  var remoteDatamanager: LoginWaiterRemoteDataManagerInputProtocol? { get set }
}

protocol LoginWaiterDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol LoginWaiterRemoteDataManagerInputProtocol: class {
  // INTERACTOR -> REMOTEDATAMANAGER
  var remoteRequestHandler: LoginWaiterRemoteDataManagerOutputProtocol? { get set }
}

protocol LoginWaiterRemoteDataManagerOutputProtocol: class {
  // REMOTEDATAMANAGER -> INTERACTOR
}

protocol LoginWaiterLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}
