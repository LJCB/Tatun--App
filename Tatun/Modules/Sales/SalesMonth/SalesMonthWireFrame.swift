//
//  SalesMonthWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 09/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class SalesMonthWireFrame: SalesMonthWireFrameProtocol {

    class func createSalesMonthModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "NVCSalesMonth")
        if let view = navController.children.first as? SalesMonthView {
            let presenter: SalesMonthPresenterProtocol & SalesMonthInteractorOutputProtocol = SalesMonthPresenter()
            let interactor: SalesMonthInteractorInputProtocol & SalesMonthRemoteDataManagerOutputProtocol = SalesMonthInteractor()
            let localDataManager: SalesMonthLocalDataManagerInputProtocol = SalesMonthLocalDataManager()
            let remoteDataManager: SalesMonthRemoteDataManagerInputProtocol = SalesMonthRemoteDataManager()
            let wireFrame: SalesMonthWireFrameProtocol = SalesMonthWireFrame()
            
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
        return UIStoryboard(name: "SalesMonth", bundle: Bundle.main)
    }
    
}
