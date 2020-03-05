//
//  MenuView.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class MenuView: UIViewController {

    // MARK: Properties
    var presenter: MenuPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MenuView: MenuViewProtocol {
    // TODO: implement view output methods
}
