//
//  SplashProtocols.swift
//  Tatun
//
//  Created by LuisCS on 17/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol SplashViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: SplashPresenterProtocol? { get set }
}

protocol SplashWireFrameProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createSplashModule() -> UIViewController
  func show_login(from view: SplashViewProtocol)
  func show_order_list(from view: SplashViewProtocol)
  
}

protocol SplashPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: SplashViewProtocol? { get set }
  var interactor: SplashInteractorInputProtocol? { get set }
  var wireFrame: SplashWireFrameProtocol? { get set }
  
  func viewDidLoad()
}

protocol SplashInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
  func user_active()
  func user_inactive()
}

protocol SplashInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: SplashInteractorOutputProtocol? { get set }
  var localDatamanager: SplashLocalDataManagerInputProtocol? { get set }
  var remoteDatamanager: SplashRemoteDataManagerInputProtocol? { get set }
  func validate_active_Sesion()
}

protocol SplashDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol SplashRemoteDataManagerInputProtocol: class {
  // INTERACTOR -> REMOTEDATAMANAGER
  var remoteRequestHandler: SplashRemoteDataManagerOutputProtocol? { get set }
  func get_current_user()
}

protocol SplashRemoteDataManagerOutputProtocol: class {
  // REMOTEDATAMANAGER -> INTERACTOR
}

protocol SplashLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}
