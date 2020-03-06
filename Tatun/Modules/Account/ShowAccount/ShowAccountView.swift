//
//  ShowAccountView.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class ShowAccountView: UIViewController {

    // MARK: Properties
    var presenter: ShowAccountPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ShowAccountView: ShowAccountViewProtocol {
    // TODO: implement view output methods
}
