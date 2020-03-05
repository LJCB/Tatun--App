//
//  NewPasswordView.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class NewPasswordView: UIViewController {
  
  // MARK: Properties
  var presenter: NewPasswordPresenterProtocol?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func store_action(_ sender: Any) {
    presenter?.go_login()
  }
}

extension NewPasswordView: NewPasswordViewProtocol {
  func show_login() {
    
  }
  
}
