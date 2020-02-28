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
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "LoginAdminView")
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
        return UIStoryboard(name: "LoginAdminView", bundle: Bundle.main)
    }
    
}
