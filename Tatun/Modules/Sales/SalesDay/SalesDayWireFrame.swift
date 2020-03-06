//
//  SalesDayWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class SalesDayWireFrame: SalesDayWireFrameProtocol {

    class func createSalesDayModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "NVCSalesDay")
        if let view = navController.children.first as? SalesDayView {
            let presenter: SalesDayPresenterProtocol & SalesDayInteractorOutputProtocol = SalesDayPresenter()
            let interactor: SalesDayInteractorInputProtocol & SalesDayRemoteDataManagerOutputProtocol = SalesDayInteractor()
            let localDataManager: SalesDayLocalDataManagerInputProtocol = SalesDayLocalDataManager()
            let remoteDataManager: SalesDayRemoteDataManagerInputProtocol = SalesDayRemoteDataManager()
            let wireFrame: SalesDayWireFrameProtocol = SalesDayWireFrame()
            
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
        return UIStoryboard(name: "SalesDay", bundle: Bundle.main)
    }
    
}
