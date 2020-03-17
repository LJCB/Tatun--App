//
//  SplashWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 17/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class SplashWireFrame: SplashWireFrameProtocol {
  class func createSplashModule() -> UIViewController {
    let navController = mainStoryboard.instantiateViewController(withIdentifier: "NVCSplash")
    if let view = navController.children.first as? SplashView {
      let presenter: SplashPresenterProtocol & SplashInteractorOutputProtocol = SplashPresenter()
      let interactor: SplashInteractorInputProtocol & SplashRemoteDataManagerOutputProtocol = SplashInteractor()
      let localDataManager: SplashLocalDataManagerInputProtocol = SplashLocalDataManager()
      let remoteDataManager: SplashRemoteDataManagerInputProtocol = SplashRemoteDataManager()
      let wireFrame: SplashWireFrameProtocol = SplashWireFrame()
      
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
    return UIStoryboard(name: "Splash", bundle: Bundle.main)
  }
  
  func show_login(from view: SplashViewProtocol) {
    let new_view_controller = LoginAdminWireFrame.createLoginAdminModule()
    if let new_view = view as? UIViewController{
      new_view.navigationController?.present(new_view_controller, animated: true, completion: nil)
    }
  }
  
  func show_order_list(from view: SplashViewProtocol) {
    let new_view_controller = OrderListWireFrame.createOrderListModule()
    if let new_view = view as? UIViewController{
      new_view.navigationController?.present(new_view_controller, animated: true, completion: nil)
    }
  }
}
