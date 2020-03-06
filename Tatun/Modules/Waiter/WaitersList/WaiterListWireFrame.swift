//
//  WaiterListWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class WaiterListWireFrame: WaiterListWireFrameProtocol {

    class func createWaiterListModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "NVCWaitersList")
        if let view = navController.children.first as? WaiterListView {
            let presenter: WaiterListPresenterProtocol & WaiterListInteractorOutputProtocol = WaiterListPresenter()
            let interactor: WaiterListInteractorInputProtocol & WaiterListRemoteDataManagerOutputProtocol = WaiterListInteractor()
            let localDataManager: WaiterListLocalDataManagerInputProtocol = WaiterListLocalDataManager()
            let remoteDataManager: WaiterListRemoteDataManagerInputProtocol = WaiterListRemoteDataManager()
            let wireFrame: WaiterListWireFrameProtocol = WaiterListWireFrame()
            
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
        return UIStoryboard(name: "WaiterList", bundle: Bundle.main)
    }
    
}
