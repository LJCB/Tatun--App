//
//  ValidateRegisterWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 13/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class ValidateRegisterWireFrame: ValidateRegisterWireFrameProtocol {

    class func createValidateRegisterModule() -> UIViewController {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "VCValidateRegister")
        if let view = viewController as? ValidateRegisterView {
            let presenter: ValidateRegisterPresenterProtocol & ValidateRegisterInteractorOutputProtocol = ValidateRegisterPresenter()
            let interactor: ValidateRegisterInteractorInputProtocol & ValidateRegisterRemoteDataManagerOutputProtocol = ValidateRegisterInteractor()
            let localDataManager: ValidateRegisterLocalDataManagerInputProtocol = ValidateRegisterLocalDataManager()
            let remoteDataManager: ValidateRegisterRemoteDataManagerInputProtocol = ValidateRegisterRemoteDataManager()
            let wireFrame: ValidateRegisterWireFrameProtocol = ValidateRegisterWireFrame()
            
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
        return UIStoryboard(name: "ValidateRegister", bundle: Bundle.main)
    }
    
}
