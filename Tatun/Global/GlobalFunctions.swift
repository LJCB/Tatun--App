//
//  GlobalFunctions.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit
class GlobalFunctions {
  static let sharedInstance = GlobalFunctions()
  
  var hide_menu = Bool()
  var menuVC = UIViewController()
  
  func set_border_button(color: String, button: UIButton){
    button.layer.borderColor = UIColor(named: color)?.cgColor
    button.layer.borderWidth = 1
  }
  
  func custom_nav_bar(view_controller:UIViewController){
    view_controller.navigationController?.navigationBar.isHidden = false
    view_controller.navigationController?.navigationBar.topItem?.title = ""
    view_controller.navigationController?.navigationBar.backgroundColor = UIColor.white
    view_controller.navigationController?.navigationBar.isTranslucent = false
    
    if view_controller is RegisterView{
      view_controller.navigationController?.navigationBar.tintColor = UIColor(named: "Blue")
    }else{
      view_controller.navigationController?.navigationBar.tintColor = UIColor.white
    }
  }
  
  func add_menu(viewController :UIViewController, view: UIView) {
    hide_menu = false
    menuVC = MenuWireFrame.createMenuModule()
    menuVC.view.frame = CGRect(x: -view.frame.width, y: 0, width: view.frame.width, height: view.frame.height)
    viewController.addChild(menuVC)
    view.addSubview(menuVC.view)
  }
  
  func animateMenu(in view: UIView) {
    if !hide_menu {
      //Menu In Animation
      UIView.animate(withDuration: 0.3, animations: {
        self.menuVC.view.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
      })
      hide_menu = true
    }else {
      //Menu Out Animation
      UIView.animate(withDuration: 0.3, animations: {
        self.menuVC.view.frame = CGRect(x: -view.frame.width, y: 0, width: view.frame.width, height: view.frame.height)
      })
      hide_menu = false
    }
  }
  
  func init_tab_bar(item_selected: Int) -> UITabBarController{
    let OrderList = OrderListWireFrame.createOrderListModule()
    let TablesList =  TablesListWireFrame.createTablesListModule()
    let Menu = MenuFoodWireFrame.createMenuFoodModule()
    let tabBarController = UITabBarController()
    
    
    let OrderListItem: UITabBarItem = UITabBarItem(title: "Pedidos", image: nil, tag: 0)
    let TablesListItem: UITabBarItem = UITabBarItem(title: "Mesas", image: nil, tag: 1)
    let MenuItem: UITabBarItem = UITabBarItem(title: "Menu", image: nil, tag: 2)
    
    OrderList.tabBarItem = OrderListItem
    TablesList.tabBarItem = TablesListItem
    Menu.tabBarItem = MenuItem
    
    OrderList.modalPresentationStyle = .fullScreen
    TablesList.modalPresentationStyle = .fullScreen
    Menu.modalPresentationStyle = .fullScreen
    
    
    tabBarController.viewControllers = [OrderList, TablesList, Menu]
    
    switch item_selected {
    case 0:
      tabBarController.selectedViewController = OrderList
    case 1:
      tabBarController.selectedViewController = TablesList
    default:
      tabBarController.selectedViewController = Menu
    }
    
    tabBarController.modalPresentationStyle = .fullScreen
    
    return tabBarController
  }
}
  
