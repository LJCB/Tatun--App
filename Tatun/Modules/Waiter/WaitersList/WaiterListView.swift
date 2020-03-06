//
//  WaiterListView.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class WaiterListView: UIViewController {

    // MARK: Properties
    var presenter: WaiterListPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension WaiterListView: WaiterListViewProtocol {
    // TODO: implement view output methods
}
