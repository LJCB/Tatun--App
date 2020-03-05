//
//  RegisterView.swift
//  Tatun
//
//  Created by LuisCS on 02/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class RegisterView: UIViewController {
  
  // MARK: Properties
  var presenter: RegisterPresenterProtocol?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
  }
}

extension RegisterView: RegisterViewProtocol {
  func set_layout() {
    GlobalFunctions.sharedInstance.custom_nav_bar(view_controller: self)
    
  }
}
