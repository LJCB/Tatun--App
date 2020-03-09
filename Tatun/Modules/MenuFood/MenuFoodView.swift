//
//  MenuFoodView.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class MenuFoodView: UIViewController {
  
  // MARK: Properties
  var presenter: MenuFoodPresenterProtocol?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
  }
  
  @IBAction func menu_action(_ sender: Any) {
    presenter?.menu_action()
  }
  
  @IBAction func finish_action(_ sender: Any) {
    
  }
  
  @IBAction func add_action(_ sender: Any) {
    
  }
  
}

extension MenuFoodView: MenuFoodViewProtocol {
  func add_menu() {
    GlobalFunctions.sharedInstance.add_menu(viewController: self, view: self.view)
  }
  
  func animate_menu() {
    GlobalFunctions.sharedInstance.animateMenu(in: self.view)
  }
  
  // TODO: implement view output methods
}
