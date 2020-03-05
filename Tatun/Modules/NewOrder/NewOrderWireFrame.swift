//
//  NewOrderWireFrame.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class NewOrderWireFrame: NewOrderWireFrameProtocol {

    class func createNewOrderModule() -> UIViewController {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "VCNewOrder")
        if let view = viewController as? NewOrderView {
            let presenter: NewOrderPresenterProtocol & NewOrderInteractorOutputProtocol = NewOrderPresenter()
            let interactor: NewOrderInteractorInputProtocol & NewOrderRemoteDataManagerOutputProtocol = NewOrderInteractor()
            let localDataManager: NewOrderLocalDataManagerInputProtocol = NewOrderLocalDataManager()
            let remoteDataManager: NewOrderRemoteDataManagerInputProtocol = NewOrderRemoteDataManager()
            let wireFrame: NewOrderWireFrameProtocol = NewOrderWireFrame()
            
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
        return UIStoryboard(name: "NewOrder", bundle: Bundle.main)
    }
    
}
