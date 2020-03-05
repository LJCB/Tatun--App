//
//  RequestCodeWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class RequestCodeWireFrame: RequestCodeWireFrameProtocol {
  
  class func createRequestCodeModule() -> UIViewController {
    let nvController = mainStoryboard.instantiateViewController(withIdentifier: "NVCRequestCode")
    if let view = nvController.children[0] as? RequestCodeView {
      let presenter: RequestCodePresenterProtocol & RequestCodeInteractorOutputProtocol = RequestCodePresenter()
      let interactor: RequestCodeInteractorInputProtocol & RequestCodeRemoteDataManagerOutputProtocol = RequestCodeInteractor()
      let localDataManager: RequestCodeLocalDataManagerInputProtocol = RequestCodeLocalDataManager()
      let remoteDataManager: RequestCodeRemoteDataManagerInputProtocol = RequestCodeRemoteDataManager()
      let wireFrame: RequestCodeWireFrameProtocol = RequestCodeWireFrame()
      
      view.presenter = presenter
      presenter.view = view
      presenter.wireFrame = wireFrame
      presenter.interactor = interactor
      interactor.presenter = presenter
      interactor.localDatamanager = localDataManager
      interactor.remoteDatamanager = remoteDataManager
      remoteDataManager.remoteRequestHandler = interactor
      
      return nvController
    }
    return UIViewController()
  }
  
  static var mainStoryboard: UIStoryboard {
    return UIStoryboard(name: "RequestCode", bundle: Bundle.main)
  }
  
  func show_form_new_password(from view: RequestCodeViewProtocol) {
    let new_view_controller = NewPasswordWireFrame.createNewPasswordModule()
    if let new_view = view as? UIViewController{
      new_view.navigationController?.pushViewController(new_view_controller, animated: true)
    }
  }
}
