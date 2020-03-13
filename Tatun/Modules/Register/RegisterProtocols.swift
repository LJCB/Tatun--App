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
  func set_picker_category()
  func reload_picker_data(categories: [category])
  func show_alert_incomplete_data()
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
  func get_new_data(name: String, phone: String, direction: String, password: String, open_hour: String, close_hour: String, category_id: Int, latitude: String, longitude: String)
}

protocol RegisterInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
  func show_data_categories(categories: [category])
  func incomplete_data()
}

protocol RegisterInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: RegisterInteractorOutputProtocol? { get set }
  var localDatamanager: RegisterLocalDataManagerInputProtocol? { get set }
  var remoteDatamanager: RegisterRemoteDataManagerInputProtocol? { get set }
  
  func get_categories()
  func validate_complete_data(name: String, phone: String, direction: String, password: String, open_hour: String, close_hour: String, category_id: Int, latitude: String, longitude: String)
}

protocol RegisterDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol RegisterRemoteDataManagerInputProtocol: class {
  // INTERACTOR -> REMOTEDATAMANAGER
  var remoteRequestHandler: RegisterRemoteDataManagerOutputProtocol? { get set }
  func get_categories_from_server()
  
}

protocol RegisterRemoteDataManagerOutputProtocol: class {
  // REMOTEDATAMANAGER -> INTERACTOR
  func categories_recived(categories: [category])
}

protocol RegisterLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}
