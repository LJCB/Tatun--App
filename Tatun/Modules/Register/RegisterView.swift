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
    self.navigationController?.navigationBar.isHidden = false
    self.navigationController?.navigationBar.topItem?.title = ""
    self.navigationController?.navigationBar.tintColor = UIColor(named: "Blue")
    self.navigationController?.navigationBar.backgroundColor = UIColor.white
    self.navigationController?.navigationBar.isTranslucent = false
    
  }
}
