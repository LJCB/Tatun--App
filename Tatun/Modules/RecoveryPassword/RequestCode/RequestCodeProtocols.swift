//
//  RequestCodeProtocols.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol RequestCodeViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: RequestCodePresenterProtocol? { get set }
  func dissmis_view()
  func set_layout()
}

protocol RequestCodeWireFrameProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createRequestCodeModule() -> UIViewController
  func show_form_new_password(from view: RequestCodeViewProtocol)
}

protocol RequestCodePresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: RequestCodeViewProtocol? { get set }
  var interactor: RequestCodeInteractorInputProtocol? { get set }
  var wireFrame: RequestCodeWireFrameProtocol? { get set }
  
  func viewDidLoad()
  func cancel_action()
  func go_new_password()
}

protocol RequestCodeInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol RequestCodeInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: RequestCodeInteractorOutputProtocol? { get set }
  var localDatamanager: RequestCodeLocalDataManagerInputProtocol? { get set }
  var remoteDatamanager: RequestCodeRemoteDataManagerInputProtocol? { get set }
}

protocol RequestCodeDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol RequestCodeRemoteDataManagerInputProtocol: class {
  // INTERACTOR -> REMOTEDATAMANAGER
  var remoteRequestHandler: RequestCodeRemoteDataManagerOutputProtocol? { get set }
}

protocol RequestCodeRemoteDataManagerOutputProtocol: class {
  // REMOTEDATAMANAGER -> INTERACTOR
}

protocol RequestCodeLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}
