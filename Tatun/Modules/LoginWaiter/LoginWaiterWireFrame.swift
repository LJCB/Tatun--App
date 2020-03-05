//
//  LoginWaiterWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 04/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class LoginWaiterWireFrame: LoginWaiterWireFrameProtocol {
  
  class func createLoginWaiterModule() -> UIViewController {
    let viewController = mainStoryboard.instantiateViewController(withIdentifier: "WaiterLoginVC")
    if let view = viewController as? LoginWaiterView {
      let presenter: LoginWaiterPresenterProtocol & LoginWaiterInteractorOutputProtocol = LoginWaiterPresenter()
      let interactor: LoginWaiterInteractorInputProtocol & LoginWaiterRemoteDataManagerOutputProtocol = LoginWaiterInteractor()
      let localDataManager: LoginWaiterLocalDataManagerInputProtocol = LoginWaiterLocalDataManager()
      let remoteDataManager: LoginWaiterRemoteDataManagerInputProtocol = LoginWaiterRemoteDataManager()
      let wireFrame: LoginWaiterWireFrameProtocol = LoginWaiterWireFrame()
      
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
    return UIStoryboard(name: "WaiterLogin", bundle: Bundle.main)
  }
  
  func show_admin_login(from view: LoginWaiterViewProtocol) {
    let new_view_controller = LoginAdminWireFrame.createLoginAdminModule()
    if let new_view = view as? UIViewController{
      print("HAciendo el push")
      new_view.navigationController?.present(new_view_controller, animated: true, completion: nil)
    }
  }
}
