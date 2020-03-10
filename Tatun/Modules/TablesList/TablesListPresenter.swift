//
//  TablesListPresenter.swift
//  Tatun
//
//  Created by LuisCS on 09/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation

class TablesListPresenter  {
    
    // MARK: Properties
    weak var view: TablesListViewProtocol?
    var interactor: TablesListInteractorInputProtocol?
    var wireFrame: TablesListWireFrameProtocol?
    
}

extension TablesListPresenter: TablesListPresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
      view?.set_tab_bar_delegate()
    }
}

extension TablesListPresenter: TablesListInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
