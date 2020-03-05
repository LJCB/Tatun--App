//
//  NewOrderView.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class NewOrderView: UIViewController {

    // MARK: Properties
    var presenter: NewOrderPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
      presenter?.viewDidLoad()
    }
}

extension NewOrderView: NewOrderViewProtocol {
  func set_layout() {
    GlobalFunctions.sharedInstance.custom_nav_bar(view_controller: self)
  }
}
