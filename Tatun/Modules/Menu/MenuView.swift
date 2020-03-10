//
//  MenuView.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class MenuView: UIViewController {
  
  @IBOutlet weak var img_user: UIImageView!
  @IBOutlet weak var view_header: UIView!
  
  // MARK: Properties
  var presenter: MenuPresenterProtocol?
  
  // MARK: Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
  }
  
  @IBAction func menu_item_action(_ sender: UIButton) {
    switch sender.tag {
    case 0:
      presenter?.go_order_list()
    case 1:
      presenter?.go_menu()
    case 2:
      presenter?.go_waiters_list()
    case 3:
      presenter?.go_account()
    case 4:
      presenter?.go_sales()
    case 5:
      print("Cerrar sesión")
    default:
      print("Default action")
    }
  }
}

extension MenuView: MenuViewProtocol {
  func set_layout() {
    view_header.layer.cornerRadius = 40
    view_header.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
  }
}
