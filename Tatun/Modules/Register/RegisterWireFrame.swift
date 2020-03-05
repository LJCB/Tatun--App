//
//  RegisterWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 02/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class RegisterWireFrame: RegisterWireFrameProtocol {

    class func createRegisterModule() -> UIViewController {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "VCRegister")
        if let view = viewController as? RegisterView {
            let presenter: RegisterPresenterProtocol & RegisterInteractorOutputProtocol = RegisterPresenter()
            let interactor: RegisterInteractorInputProtocol & RegisterRemoteDataManagerOutputProtocol = RegisterInteractor()
            let localDataManager: RegisterLocalDataManagerInputProtocol = RegisterLocalDataManager()
            let remoteDataManager: RegisterRemoteDataManagerInputProtocol = RegisterRemoteDataManager()
            let wireFrame: RegisterWireFrameProtocol = RegisterWireFrame()
            
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
        return UIStoryboard(name: "Register", bundle: Bundle.main)
    }
    
}
