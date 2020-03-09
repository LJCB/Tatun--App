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
    presenter?.viewDidLoad()
  }
  
  @IBAction func menu_action(_ sender: Any) {
    presenter?.menu_action()
  }
}

extension ShowAccountView: ShowAccountViewProtocol {
  func add_menu() {
    GlobalFunctions.sharedInstance.add_menu(viewController: self, view: self.view)
  }
  
  func animate_menu() {
    GlobalFunctions.sharedInstance.animateMenu(in: self.view)
  }
}
