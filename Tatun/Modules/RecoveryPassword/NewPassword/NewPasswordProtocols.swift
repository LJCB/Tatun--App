//
//  NewPasswordProtocols.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol NewPasswordViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: NewPasswordPresenterProtocol? { get set }
}

protocol NewPasswordWireFrameProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createNewPasswordModule() -> UIViewController
  func show_login(from view: NewPasswordViewProtocol)
}

protocol NewPasswordPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: NewPasswordViewProtocol? { get set }
  var interactor: NewPasswordInteractorInputProtocol? { get set }
  var wireFrame: NewPasswordWireFrameProtocol? { get set }
  
  func viewDidLoad()
  func go_login()
}

protocol NewPasswordInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol NewPasswordInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: NewPasswordInteractorOutputProtocol? { get set }
  var localDatamanager: NewPasswordLocalDataManagerInputProtocol? { get set }
  var remoteDatamanager: NewPasswordRemoteDataManagerInputProtocol? { get set }
}

protocol NewPasswordDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol NewPasswordRemoteDataManagerInputProtocol: class {
  // INTERACTOR -> REMOTEDATAMANAGER
  var remoteRequestHandler: NewPasswordRemoteDataManagerOutputProtocol? { get set }
}

protocol NewPasswordRemoteDataManagerOutputProtocol: class {
  // REMOTEDATAMANAGER -> INTERACTOR
}

protocol NewPasswordLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}
