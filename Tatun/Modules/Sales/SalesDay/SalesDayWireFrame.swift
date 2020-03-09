//
//  SalesDayWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class SalesDayWireFrame: SalesDayWireFrameProtocol {
  class func createSalesDayModule() -> UIViewController {
    let navController = mainStoryboard.instantiateViewController(withIdentifier: "NVCSalesDay")
    if let view = navController.children.first as? SalesDayView {
      let presenter: SalesDayPresenterProtocol & SalesDayInteractorOutputProtocol = SalesDayPresenter()
      let interactor: SalesDayInteractorInputProtocol & SalesDayRemoteDataManagerOutputProtocol = SalesDayInteractor()
      let localDataManager: SalesDayLocalDataManagerInputProtocol = SalesDayLocalDataManager()
      let remoteDataManager: SalesDayRemoteDataManagerInputProtocol = SalesDayRemoteDataManager()
      let wireFrame: SalesDayWireFrameProtocol = SalesDayWireFrame()
      
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
    return UIStoryboard(name: "SalesDay", bundle: Bundle.main)
  }
  
  func show_sales_mont(from view: SalesDayViewProtocol) {
    let new_view_controller = SalesMonthWireFrame.createSalesMonthModule()
    if let new_view = view as? UIViewController{
      new_view.show(new_view_controller, sender: view)
    }
  }
}
