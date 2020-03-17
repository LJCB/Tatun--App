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
  
  @IBOutlet weak var txt_bussines_code: UITextField!
  @IBOutlet weak var txt_email: UITextField!
  @IBOutlet weak var txt_password: UITextField!
  
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
    presenter?.get_login_data(email: txt_email.text ?? "", password: txt_password.text ?? "", bussines_code: txt_bussines_code.text ?? "")
  }
  
  @objc func dismiss_keyboard(){
    self.view.endEditing(true)
  }
  
  func setup_keyboard_dismiss_recognizer(){
    let tapRecognizer: UITapGestureRecognizer = UITapGestureRecognizer(
      target: self,
      action: #selector(self.dismiss_keyboard))
    self.view.addGestureRecognizer(tapRecognizer)
    tapRecognizer.cancelsTouchesInView = true
  }
}

extension LoginAdminView: LoginAdminViewProtocol {
  func show_alert(message: String, title: String) {
    CsFramework.sharedInstance.show_simple_alert(view_controller: self, title: title, message: message, button_tittle: "Aceptar")
  }
  
  func set_layout() {
    setup_keyboard_dismiss_recognizer()
    self.navigationController?.navigationBar.isHidden = true
  }
}
