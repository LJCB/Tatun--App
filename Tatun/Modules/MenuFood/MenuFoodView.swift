//
//  MenuFoodView.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class MenuFoodView: UIViewController {

    // MARK: Properties
    var presenter: MenuFoodPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension MenuFoodView: MenuFoodViewProtocol {
    // TODO: implement view output methods
}
