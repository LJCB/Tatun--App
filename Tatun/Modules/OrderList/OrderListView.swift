//
//  OrderListView.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class OrderListView: UIViewController {
  
  @IBOutlet weak var view_header: UIView!
  // MARK: Properties
  var presenter: OrderListPresenterProtocol?
  
  // MARK: Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
  }
  
  @IBAction func new_order_action(_ sender: Any) {
    presenter?.go_new_order()
  }
  
  @IBAction func menu_action(_ sender: Any) {
    presenter?.menu_action()
  }
}

extension OrderListView: OrderListViewProtocol {
  func set_tab_bar_delegate() {
     self.tabBarController?.delegate = self
  }
  
  func animate_menu() {
    GlobalFunctions.sharedInstance.animateMenu(in: self.view)
  }
  
  func add_menu() {
    GlobalFunctions.sharedInstance.add_menu(viewController: self, view: self.view)
  }
  
  func set_layout() {
    view_header.layer.cornerRadius = 40
    view_header.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
  }
}

extension OrderListView: UITabBarControllerDelegate{
  func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    print("Did select pedidos")
    var tabBarController = UITabBarController() 
    tabBarController = GlobalFunctions.sharedInstance.init_tab_bar(item_selected: viewController.tabBarItem.tag)
    self.present(tabBarController, animated: true, completion: nil)
    
  }
}
