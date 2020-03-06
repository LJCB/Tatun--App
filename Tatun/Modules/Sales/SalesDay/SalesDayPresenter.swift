//
//  SalesDayPresenter.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class SalesDayPresenter  {
    
    // MARK: Properties
    weak var view: SalesDayViewProtocol?
    var interactor: SalesDayInteractorInputProtocol?
    var wireFrame: SalesDayWireFrameProtocol?
    
}

extension SalesDayPresenter: SalesDayPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
}

extension SalesDayPresenter: SalesDayInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
