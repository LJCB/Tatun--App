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
    presenter?.viewDidLoad()
  }
  
  @IBAction func waiter_login_action(_ sender: Any) {
    presenter?.go_waiter_login()
  }
  
  @IBAction func register_action(_ sender: Any) {
    presenter?.go_register()
  }
  
  @IBAction func recovery_password_action(_ sender: Any) {
    presenter?.go_request_code()
  }
  
  @IBAction func login_action(_ sender: Any) {
    presenter?.go_order_list()
  }
}

extension LoginAdminView: LoginAdminViewProtocol {
  func set_layout() {
    self.navigationController?.navigationBar.isHidden = true
  }
}
