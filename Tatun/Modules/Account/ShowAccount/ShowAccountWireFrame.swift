//
//  ShowAccountWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class ShowAccountWireFrame: ShowAccountWireFrameProtocol {

    class func createShowAccountModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "NVCShowAccount")
        if let view = navController.children.first as? ShowAccountView {
            let presenter: ShowAccountPresenterProtocol & ShowAccountInteractorOutputProtocol = ShowAccountPresenter()
            let interactor: ShowAccountInteractorInputProtocol & ShowAccountRemoteDataManagerOutputProtocol = ShowAccountInteractor()
            let localDataManager: ShowAccountLocalDataManagerInputProtocol = ShowAccountLocalDataManager()
            let remoteDataManager: ShowAccountRemoteDataManagerInputProtocol = ShowAccountRemoteDataManager()
            let wireFrame: ShowAccountWireFrameProtocol = ShowAccountWireFrame()
            
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
        return UIStoryboard(name: "ShowAccount", bundle: Bundle.main)
    }
    
}
