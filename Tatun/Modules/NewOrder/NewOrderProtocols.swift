//
//  NewOrderProtocols.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol NewOrderViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: NewOrderPresenterProtocol? { get set }
  func set_layout()
}

protocol NewOrderWireFrameProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createNewOrderModule() -> UIViewController
}

protocol NewOrderPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: NewOrderViewProtocol? { get set }
  var interactor: NewOrderInteractorInputProtocol? { get set }
  var wireFrame: NewOrderWireFrameProtocol? { get set }
  
  func viewDidLoad()
}

protocol NewOrderInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol NewOrderInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: NewOrderInteractorOutputProtocol? { get set }
  var localDatamanager: NewOrderLocalDataManagerInputProtocol? { get set }
  var remoteDatamanager: NewOrderRemoteDataManagerInputProtocol? { get set }
}

protocol NewOrderDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol NewOrderRemoteDataManagerInputProtocol: class {
  // INTERACTOR -> REMOTEDATAMANAGER
  var remoteRequestHandler: NewOrderRemoteDataManagerOutputProtocol? { get set }
}

protocol NewOrderRemoteDataManagerOutputProtocol: class {
  // REMOTEDATAMANAGER -> INTERACTOR
}

protocol NewOrderLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}
