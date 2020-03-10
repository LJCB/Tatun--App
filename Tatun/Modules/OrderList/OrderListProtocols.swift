//
//  OrderListProtocols.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol OrderListViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: OrderListPresenterProtocol? { get set }
  func set_layout()
  func add_menu()
  func animate_menu()
  func set_tab_bar_delegate()
}

protocol OrderListWireFrameProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createOrderListModule() -> UIViewController
  func show_form_new_order(from view: OrderListViewProtocol)
 
}

protocol OrderListPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: OrderListViewProtocol? { get set }
  var interactor: OrderListInteractorInputProtocol? { get set }
  var wireFrame: OrderListWireFrameProtocol? { get set }
  
  func viewDidLoad()
  func go_new_order()
  func menu_action()
}

protocol OrderListInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol OrderListInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: OrderListInteractorOutputProtocol? { get set }
  var localDatamanager: OrderListLocalDataManagerInputProtocol? { get set }
  var remoteDatamanager: OrderListRemoteDataManagerInputProtocol? { get set }
}

protocol OrderListDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol OrderListRemoteDataManagerInputProtocol: class {
  // INTERACTOR -> REMOTEDATAMANAGER
  var remoteRequestHandler: OrderListRemoteDataManagerOutputProtocol? { get set }
}

protocol OrderListRemoteDataManagerOutputProtocol: class {
  // REMOTEDATAMANAGER -> INTERACTOR
}

protocol OrderListLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}
