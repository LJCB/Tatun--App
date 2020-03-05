//
//  MenuWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class MenuWireFrame: MenuWireFrameProtocol {
    class func createMenuModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "MenuView")
        if let view = navController.children.first as? MenuView {
            let presenter: MenuPresenterProtocol & MenuInteractorOutputProtocol = MenuPresenter()
            let interactor: MenuInteractorInputProtocol & MenuRemoteDataManagerOutputProtocol = MenuInteractor()
            let localDataManager: MenuLocalDataManagerInputProtocol = MenuLocalDataManager()
            let remoteDataManager: MenuRemoteDataManagerInputProtocol = MenuRemoteDataManager()
            let wireFrame: MenuWireFrameProtocol = MenuWireFrame()
            
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
        return UIStoryboard(name: "MenuView", bundle: Bundle.main)
    }
    
}
