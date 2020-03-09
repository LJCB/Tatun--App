//
//  SalesDayView.swift
//  Tatun
//
//  Created by LuisCS on 06/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class SalesDayView: UIViewController {
  
  @IBOutlet weak var view_green: UIView!
  @IBOutlet weak var view_blue: UIView!
  // MARK: Properties
  var presenter: SalesDayPresenterProtocol?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
  }
  
  @IBAction func month_action(_ sender: Any) {
    presenter?.go_sales_month()
  }
  
  @IBAction func menu_action(_ sender: Any) {
    presenter?.menu_action()
  }
}

extension SalesDayView: SalesDayViewProtocol {
  func add_menu() {
    GlobalFunctions.sharedInstance.add_menu(viewController: self, view: self.view)
  }
  
  func animate_menu() {
    GlobalFunctions.sharedInstance.animateMenu(in: self.view)
  }
  
  func set_layout() {
    view_blue.layer.cornerRadius = 40
    view_green.layer.cornerRadius = 40
    view_blue.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    view_green.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
  }
}
