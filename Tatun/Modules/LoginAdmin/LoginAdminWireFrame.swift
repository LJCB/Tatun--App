//
//  LoginAdminWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 28/02/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class LoginAdminWireFrame: LoginAdminWireFrameProtocol {
  
  class func createLoginAdminModule() -> UIViewController {
    let navController = mainStoryboard.instantiateViewController(withIdentifier: "NVCAdminLogin")
    if let view = navController.children.first as? LoginAdminView {
      let presenter: LoginAdminPresenterProtocol & LoginAdminInteractorOutputProtocol = LoginAdminPresenter()
      let interactor: LoginAdminInteractorInputProtocol & LoginAdminRemoteDataManagerOutputProtocol = LoginAdminInteractor()
      let localDataManager: LoginAdminLocalDataManagerInputProtocol = LoginAdminLocalDataManager()
      let remoteDataManager: LoginAdminRemoteDataManagerInputProtocol = LoginAdminRemoteDataManager()
      let wireFrame: LoginAdminWireFrameProtocol = LoginAdminWireFrame()
      
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
    return UIStoryboard(name: "AdminLogin", bundle: Bundle.main)
  }
  
  func show_waiter_login(from view: LoginAdminViewProtocol) {
    //Crear nuevo módulo e instanciar
    let new_view_controller = LoginWaiterWireFrame.createLoginWaiterModule()
    if let new_view = view as? UIViewController{
      new_view.navigationController?.pushViewController(new_view_controller, animated: true)
    }
  }
  
  func show_register(from view: LoginAdminViewProtocol) {
    let new_view_controller = RegisterWireFrame.createRegisterModule()
    if let new_view = view as? UIViewController{
      new_view.navigationController?.pushViewController(new_view_controller, animated: true)
    }
  }
  
  func show_form_request_code(from view: LoginAdminViewProtocol) {
    let new_view_controller = RequestCodeWireFrame.createRequestCodeModule()
    if let new_view = view as? UIViewController{
      new_view.navigationController?.present(new_view_controller, animated: true, completion: nil)
    }
  }
}
