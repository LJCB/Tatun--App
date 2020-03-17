//
//  LoginAdminProtocols.swift
//  Tatun
//
//  Created by LuisCS on 28/02/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol LoginAdminViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: LoginAdminPresenterProtocol? { get set }
  func set_layout()
  func show_alert(message: String, title: String)
}

protocol LoginAdminWireFrameProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createLoginAdminModule() -> UIViewController
  func show_waiter_login(from view: LoginAdminViewProtocol)
  func show_register(from view: LoginAdminViewProtocol)
  func show_form_request_code(from view: LoginAdminViewProtocol)
  func show_order_list(from view: LoginAdminViewProtocol)
}

protocol LoginAdminPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: LoginAdminViewProtocol? { get set }
  var interactor: LoginAdminInteractorInputProtocol? { get set }
  var wireFrame: LoginAdminWireFrameProtocol? { get set }
  
  func viewDidLoad()
  func go_waiter_login()
  func go_register()
  func go_request_code()
  func go_order_list()
  func get_login_data(email: String, password: String, bussines_code: String)
  
}

protocol LoginAdminInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
  func incomplete_data()
  func login_error(message: String)
  func login_success()
}

protocol LoginAdminInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: LoginAdminInteractorOutputProtocol? { get set }
  var localDatamanager: LoginAdminLocalDataManagerInputProtocol? { get set }
  var remoteDatamanager: LoginAdminRemoteDataManagerInputProtocol? { get set }
  
  func validate_login_data(email: String, password: String, bussines_code: String)
}

protocol LoginAdminDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol LoginAdminRemoteDataManagerInputProtocol: class {
  // INTERACTOR -> REMOTEDATAMANAGER
  var remoteRequestHandler: LoginAdminRemoteDataManagerOutputProtocol? { get set }
  func request_token(email: String, password: String)
}

protocol LoginAdminRemoteDataManagerOutputProtocol: class {
  // REMOTEDATAMANAGER -> INTERACTOR
  func login_error(message: String)
  func login_success()
}

protocol LoginAdminLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}
