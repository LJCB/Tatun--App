//
//  NewPasswordWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class NewPasswordWireFrame: NewPasswordWireFrameProtocol {
  
  class func createNewPasswordModule() -> UIViewController {
    let viewController = mainStoryboard.instantiateViewController(withIdentifier: "VCNewPassword")
    if let view = viewController as? NewPasswordView {
      let presenter: NewPasswordPresenterProtocol & NewPasswordInteractorOutputProtocol = NewPasswordPresenter()
      let interactor: NewPasswordInteractorInputProtocol & NewPasswordRemoteDataManagerOutputProtocol = NewPasswordInteractor()
      let localDataManager: NewPasswordLocalDataManagerInputProtocol = NewPasswordLocalDataManager()
      let remoteDataManager: NewPasswordRemoteDataManagerInputProtocol = NewPasswordRemoteDataManager()
      let wireFrame: NewPasswordWireFrameProtocol = NewPasswordWireFrame()
      
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
    return UIStoryboard(name: "NewPassword", bundle: Bundle.main)
  }
  
  func show_login(from view: NewPasswordViewProtocol) {
    let new_view_controller = LoginAdminWireFrame.createLoginAdminModule()
    if let new_view = view as? UIViewController{
      new_view.navigationController?.present(new_view_controller, animated: true, completion: nil)
    }
  }
  
}
