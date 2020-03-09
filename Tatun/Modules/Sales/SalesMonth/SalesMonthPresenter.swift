//
//  SalesMonthPresenter.swift
//  Tatun
//
//  Created by LuisCS on 09/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class SalesMonthPresenter  {
    
    // MARK: Properties
    weak var view: SalesMonthViewProtocol?
    var interactor: SalesMonthInteractorInputProtocol?
    var wireFrame: SalesMonthWireFrameProtocol?
    
}

extension SalesMonthPresenter: SalesMonthPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
      view?.set_layout()
    }
}

extension SalesMonthPresenter: SalesMonthInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
