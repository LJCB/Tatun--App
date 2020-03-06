//
//  MenuFoodPresenter.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class MenuFoodPresenter  {
    
    // MARK: Properties
    weak var view: MenuFoodViewProtocol?
    var interactor: MenuFoodInteractorInputProtocol?
    var wireFrame: MenuFoodWireFrameProtocol?
    
}

extension MenuFoodPresenter: MenuFoodPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension MenuFoodPresenter: MenuFoodInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
