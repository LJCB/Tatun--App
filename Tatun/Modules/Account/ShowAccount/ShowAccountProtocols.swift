//
//  ShowAccountProtocols.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol ShowAccountViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: ShowAccountPresenterProtocol? { get set }
  func add_menu()
  func animate_menu()
}

protocol ShowAccountWireFrameProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createShowAccountModule() -> UIViewController
}

protocol ShowAccountPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: ShowAccountViewProtocol? { get set }
  var interactor: ShowAccountInteractorInputProtocol? { get set }
  var wireFrame: ShowAccountWireFrameProtocol? { get set }
  
  func viewDidLoad()
  func menu_action()
}

protocol ShowAccountInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol ShowAccountInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: ShowAccountInteractorOutputProtocol? { get set }
  var localDatamanager: ShowAccountLocalDataManagerInputProtocol? { get set }
  var remoteDatamanager: ShowAccountRemoteDataManagerInputProtocol? { get set }
}

protocol ShowAccountDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol ShowAccountRemoteDataManagerInputProtocol: class {
  // INTERACTOR -> REMOTEDATAMANAGER
  var remoteRequestHandler: ShowAccountRemoteDataManagerOutputProtocol? { get set }
}

protocol ShowAccountRemoteDataManagerOutputProtocol: class {
  // REMOTEDATAMANAGER -> INTERACTOR
}

protocol ShowAccountLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}
