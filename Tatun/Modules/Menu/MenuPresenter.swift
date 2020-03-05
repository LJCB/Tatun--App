//
//  MenuPresenter.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class MenuPresenter  {
    
    // MARK: Properties
    weak var view: MenuViewProtocol?
    var interactor: MenuInteractorInputProtocol?
    var wireFrame: MenuWireFrameProtocol?
    
}

extension MenuPresenter: MenuPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension MenuPresenter: MenuInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
