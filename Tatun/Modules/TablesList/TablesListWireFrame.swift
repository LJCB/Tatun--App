//
//  TablesListWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 09/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class TablesListWireFrame: TablesListWireFrameProtocol {
  class func createTablesListModule() -> UIViewController {
    let navController = mainStoryboard.instantiateViewController(withIdentifier: "NVCTablesList")
    if let view = navController.children.first as? TablesListView {
      let presenter: TablesListPresenterProtocol & TablesListInteractorOutputProtocol = TablesListPresenter()
      let interactor: TablesListInteractorInputProtocol & TablesListRemoteDataManagerOutputProtocol = TablesListInteractor()
      let localDataManager: TablesListLocalDataManagerInputProtocol = TablesListLocalDataManager()
      let remoteDataManager: TablesListRemoteDataManagerInputProtocol = TablesListRemoteDataManager()
      let wireFrame: TablesListWireFrameProtocol = TablesListWireFrame()
      view.presenter = presenter
      presenter.view = view
      presenter.wireFrame = wireFrame
      presenter.interactor = interactor
      interactor.presenter = presenter
      interactor.localDatamanager = localDataManager
      interactor.remoteDatamanager = remoteDataManager
      remoteDataManager.remoteRequestHandler = interactor
      
      return navController
    }
    return UIViewController()
  }
  
  static var mainStoryboard: UIStoryboard {
    return UIStoryboard(name: "TablesList", bundle: Bundle.main)
  }
  
}
