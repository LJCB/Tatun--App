//
//  SalesMonthView.swift
//  Tatun
//
//  Created by LuisCS on 09/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class SalesMonthView: UIViewController {
  @IBOutlet weak var view_green: UIView!
  @IBOutlet weak var view_blue: UIView!
  
  // MARK: Properties
  var presenter: SalesMonthPresenterProtocol?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
    
  }
  
  @IBAction func day_action(_ sender: Any) {
  
  }
  
  @IBAction func menu_action(_ sender: Any) {
    presenter?.menu_action()
  }
}

extension SalesMonthView: SalesMonthViewProtocol {
  func add_menu() {
    GlobalFunctions.sharedInstance.add_menu(viewController: self, view: self.view)
  }
  
  func animate_menu() {
    GlobalFunctions.sharedInstance.animateMenu(in: self.view)
  }
  
  func set_layout() {
    view_green.layer.cornerRadius = 40
    view_blue.layer.cornerRadius = 40
    view_blue.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    view_green.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
  }
}
