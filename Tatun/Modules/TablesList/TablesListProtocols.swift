//
//  TablesListProtocols.swift
//  Tatun
//
//  Created by LuisCS on 09/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

protocol TablesListViewProtocol: class {
  // PRESENTER -> VIEW
  var presenter: TablesListPresenterProtocol? { get set }
  func set_tab_bar_delegate()
}

protocol TablesListWireFrameProtocol: class {
  // PRESENTER -> WIREFRAME
  static func createTablesListModule() -> UIViewController
}

protocol TablesListPresenterProtocol: class {
  // VIEW -> PRESENTER
  var view: TablesListViewProtocol? { get set }
  var interactor: TablesListInteractorInputProtocol? { get set }
  var wireFrame: TablesListWireFrameProtocol? { get set }
  
  func viewDidLoad()
}

protocol TablesListInteractorOutputProtocol: class {
  // INTERACTOR -> PRESENTER
}

protocol TablesListInteractorInputProtocol: class {
  // PRESENTER -> INTERACTOR
  var presenter: TablesListInteractorOutputProtocol? { get set }
  var localDatamanager: TablesListLocalDataManagerInputProtocol? { get set }
  var remoteDatamanager: TablesListRemoteDataManagerInputProtocol? { get set }
}

protocol TablesListDataManagerInputProtocol: class {
  // INTERACTOR -> DATAMANAGER
}

protocol TablesListRemoteDataManagerInputProtocol: class {
  // INTERACTOR -> REMOTEDATAMANAGER
  var remoteRequestHandler: TablesListRemoteDataManagerOutputProtocol? { get set }
}

protocol TablesListRemoteDataManagerOutputProtocol: class {
  // REMOTEDATAMANAGER -> INTERACTOR
}

protocol TablesListLocalDataManagerInputProtocol: class {
  // INTERACTOR -> LOCALDATAMANAGER
}
