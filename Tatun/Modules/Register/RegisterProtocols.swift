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
  func get_user_location()
  func set_google_maps_delegate()
  func set_pickers()
  func reload_picker_data(categories: [category])
  func show_warning_alert(message: String)
  
}

protocol RegisterWireFrameProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createRegisterModule() -> UIViewController
  func show_order_list(from view: RegisterViewProtocol)
}

protocol RegisterPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: RegisterViewProtocol? { get set }
  var interactor: RegisterInteractorInputProtocol? { get set }
  var wireFrame: RegisterWireFrameProtocol? { get set }
  
  func viewDidLoad()
  func get_new_data(name: String, email: String, phone: String, direction: String, password: String, open_hour: String, close_hour: String, category_id: Int, latitude: String, longitude: String)
}

protocol RegisterInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
  func show_data_categories(categories: [category])
  func incomplete_data()
  func register_error(message: String)
  func register_success()
}

protocol RegisterInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: RegisterInteractorOutputProtocol? { get set }
  var localDatamanager: RegisterLocalDataManagerInputProtocol? { get set }
  var remoteDatamanager: RegisterRemoteDataManagerInputProtocol? { get set }
  
  func get_categories()
  func validate_complete_data(name: String, email: String, phone: String, direction: String, password: String, open_hour: String, close_hour: String, category_id: Int, latitude: String, longitude: String)
}

protocol RegisterDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol RegisterRemoteDataManagerInputProtocol: class {
  // INTERACTOR -> REMOTEDATAMANAGER
  var remoteRequestHandler: RegisterRemoteDataManagerOutputProtocol? { get set }
  func get_categories_from_server()
  func store_bussines_data(name: String, email: String, phone: String, direction: String, password: String, open_hour: String, close_hour: String, category_id: Int, latitude: String, longitude: String)
  func register_bussines_access(name: String, email: String, phone: String, direction: String, password: String, open_hour: String, close_hour: String, category_id: Int, latitude: String, longitude: String)
  
}

protocol RegisterRemoteDataManagerOutputProtocol: class {
  // REMOTEDATAMANAGER -> INTERACTOR
  func categories_recived(categories: [category])
  func register_error(message: String)
  func register_success()
  func user_auth_created(name: String, email: String, phone: String, direction: String, password: String, open_hour: String, close_hour: String, category_id: Int, latitude: String, longitude: String)
}

protocol RegisterLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}
