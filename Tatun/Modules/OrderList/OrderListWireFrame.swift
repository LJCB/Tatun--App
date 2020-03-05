//
//  OrderListWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class OrderListWireFrame: OrderListWireFrameProtocol {
  
  class func createOrderListModule() -> UIViewController {
    let navController = mainStoryboard.instantiateViewController(withIdentifier: "NVCOrderList")
    if let view = navController.children.first as? OrderListView {
      let presenter: OrderListPresenterProtocol & OrderListInteractorOutputProtocol = OrderListPresenter()
      let interactor: OrderListInteractorInputProtocol & OrderListRemoteDataManagerOutputProtocol = OrderListInteractor()
      let localDataManager: OrderListLocalDataManagerInputProtocol = OrderListLocalDataManager()
      let remoteDataManager: OrderListRemoteDataManagerInputProtocol = OrderListRemoteDataManager()
      let wireFrame: OrderListWireFrameProtocol = OrderListWireFrame()
      
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
    return UIStoryboard(name: "OrderList", bundle: Bundle.main)
  }
  
  func show_form_new_order(from view: OrderListViewProtocol) {
    let new_view_controller = NewOrderWireFrame.createNewOrderModule()
    if let new_view = view as? UIViewController{
      new_view.navigationController?.pushViewController(new_view_controller, animated: true)
    }
  }
  
}
