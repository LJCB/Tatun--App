//
//  LoginAdminView.swift
//  Tatun
//
//  Created by LuisCS on 28/02/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class LoginAdminView: UIViewController {

    // MARK: Properties
    var presenter: LoginAdminPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension LoginAdminView: LoginAdminViewProtocol {
    // TODO: implement view output methods
}
