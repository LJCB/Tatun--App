//
//  SalesMonthProtocols.swift
//  Tatun
//
//  Created by LuisCS on 09/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol SalesMonthViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: SalesMonthPresenterProtocol? { get set }
  func set_layout()
  func add_menu()
  func animate_menu()
}

protocol SalesMonthWireFrameProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createSalesMonthModule() -> UIViewController
}

protocol SalesMonthPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: SalesMonthViewProtocol? { get set }
  var interactor: SalesMonthInteractorInputProtocol? { get set }
  var wireFrame: SalesMonthWireFrameProtocol? { get set }
  
  func viewDidLoad()
  func menu_action()
}

protocol SalesMonthInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol SalesMonthInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: SalesMonthInteractorOutputProtocol? { get set }
  var localDatamanager: SalesMonthLocalDataManagerInputProtocol? { get set }
  var remoteDatamanager: SalesMonthRemoteDataManagerInputProtocol? { get set }
}

protocol SalesMonthDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol SalesMonthRemoteDataManagerInputProtocol: class {
  // INTERACTOR -> REMOTEDATAMANAGER
  var remoteRequestHandler: SalesMonthRemoteDataManagerOutputProtocol? { get set }
}

protocol SalesMonthRemoteDataManagerOutputProtocol: class {
  // REMOTEDATAMANAGER -> INTERACTOR
}

protocol SalesMonthLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}
