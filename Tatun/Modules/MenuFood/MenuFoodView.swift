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
  func set_tab_bar_delegate() {
    self.tabBarController?.delegate = self
  }
  
  func add_menu() {
    GlobalFunctions.sharedInstance.add_menu(viewController: self, view: self.view)
  }
  
  func animate_menu() {
    GlobalFunctions.sharedInstance.animateMenu(in: self.view)
  }
}

extension MenuFoodView: UITabBarControllerDelegate{
  func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    
    var tabBarController = UITabBarController()
    tabBarController = GlobalFunctions.sharedInstance.init_tab_bar(item_selected: viewController.tabBarItem.tag)
    self.present(tabBarController, animated: true, completion: nil)
    print("Did select Menu")
  }
}
