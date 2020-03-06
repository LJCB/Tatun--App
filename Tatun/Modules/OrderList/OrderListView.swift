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
  
  var hideMenu: Bool = Bool()
  var MenuVC: UIViewController = UIViewController()
  
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
    presenter?.menu_action(menu_showed: hideMenu)
  }
}

extension OrderListView: OrderListViewProtocol {
  func add_menu() {
    let new_view_controller = MenuWireFrame.createMenuModule()
    new_view_controller.view.frame = CGRect(x: -self.view.frame.width, y: 0, width: self.view.frame.width, height: self.view.frame.height)
    MenuVC = new_view_controller
    self.addChild(MenuVC)
    self.view.addSubview(MenuVC.view)
  }
  
  func show_menu() {
    hideMenu = true
    UIView.animate(withDuration: 0.3) {
      self.MenuVC.view.frame = CGRect(x:0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
      self.MenuVC.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
      self.view.layoutIfNeeded()
    }
  }
  
  func hide_menu() {
    hideMenu = false
    UIView.animate(withDuration: 0.3) {
      self.MenuVC.view.frame = CGRect(x:-self.view.frame.width, y: 0, width: self.view.frame.width, height: self.view.frame.height)
      self.MenuVC.view.backgroundColor = UIColor(red: 256, green: 256, blue: 256, alpha: 0)
      self.view.layoutIfNeeded()
    }
  }
  
  func set_layout() {
    view_header.layer.cornerRadius = 40
    view_header.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
  }
}
