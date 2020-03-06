//
//  SalesDayView.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class SalesDayView: UIViewController {

    // MARK: Properties
    var presenter: SalesDayPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SalesDayView: SalesDayViewProtocol {
    // TODO: implement view output methods
}
