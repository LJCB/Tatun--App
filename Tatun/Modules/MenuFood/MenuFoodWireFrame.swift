//
//  MenuFoodWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class MenuFoodWireFrame: MenuFoodWireFrameProtocol {

    class func createMenuFoodModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "NVCMenuFood")
        if let view = navController.children.first as? MenuFoodView {
            let presenter: MenuFoodPresenterProtocol & MenuFoodInteractorOutputProtocol = MenuFoodPresenter()
            let interactor: MenuFoodInteractorInputProtocol & MenuFoodRemoteDataManagerOutputProtocol = MenuFoodInteractor()
            let localDataManager: MenuFoodLocalDataManagerInputProtocol = MenuFoodLocalDataManager()
            let remoteDataManager: MenuFoodRemoteDataManagerInputProtocol = MenuFoodRemoteDataManager()
            let wireFrame: MenuFoodWireFrameProtocol = MenuFoodWireFrame()
            
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
        return UIStoryboard(name: "MenuFood", bundle: Bundle.main)
    }
    
}
