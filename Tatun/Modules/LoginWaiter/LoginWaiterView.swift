//
//  LoginWaiterView.swift
//  Tatun
//
//  Created by LuisCS on 04/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class LoginWaiterView: UIViewController {
  
  // MARK: Properties
  var presenter: LoginWaiterPresenterProtocol?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func admin_login_action(_ sender: Any) {
    print("Decimos al presenter que vaya al admin")
    presenter?.go_admin_login()
  }
}

extension LoginWaiterView: LoginWaiterViewProtocol {
 
}
