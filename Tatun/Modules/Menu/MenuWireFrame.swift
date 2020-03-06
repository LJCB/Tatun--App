//
//  MenuWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class MenuWireFrame: MenuWireFrameProtocol {
  
  class func createMenuModule() -> UIViewController {
    let viewController = mainStoryboard.instantiateViewController(withIdentifier: "MenuVC")
    if let view = viewController as? MenuView {
      let presenter: MenuPresenterProtocol & MenuInteractorOutputProtocol = MenuPresenter()
      let interactor: MenuInteractorInputProtocol & MenuRemoteDataManagerOutputProtocol = MenuInteractor()
      let localDataManager: MenuLocalDataManagerInputProtocol = MenuLocalDataManager()
      let remoteDataManager: MenuRemoteDataManagerInputProtocol = MenuRemoteDataManager()
      let wireFrame: MenuWireFrameProtocol = MenuWireFrame()
      
      view.presenter = presenter
      presenter.view = view
      presenter.wireFrame = wireFrame
      presenter.interactor = interactor
      interactor.presenter = presenter
      interactor.localDatamanager = localDataManager
      interactor.remoteDatamanager = remoteDataManager
      remoteDataManager.remoteRequestHandler = interactor
      
      return viewController
    }
    return UIViewController()
  }
  
  static var mainStoryboard: UIStoryboard {
    return UIStoryboard(name: "Menu", bundle: Bundle.main)
  }
  
  func show_menu(from view: MenuViewProtocol) {
    let new_view_controller = MenuFoodWireFrame.createMenuFoodModule()
    if let new_view = view as? UIViewController{
      new_view.show(new_view_controller, sender: view)
    }
  }
  
  func show_waiters_list(from view: MenuViewProtocol) {
    let new_view_controller = WaiterListWireFrame.createWaiterListModule()
    if let new_view = view as? UIViewController{
      new_view.show(new_view_controller, sender: view)
    }
  }
  
  func show_account(from view: MenuViewProtocol) {
    let new_view_controller = ShowAccountWireFrame.createShowAccountModule()
    if let new_view = view as? UIViewController{
      new_view.show(new_view_controller, sender: view)
    }
  }
  
  func show_sales_day(from view: MenuViewProtocol) {
    let new_view_controller = SalesDayWireFrame.createSalesDayModule()
    if let new_view = view as? UIViewController{
      new_view.show(new_view_controller, sender: view)
    }
  }
}
