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
}

extension OrderListView: OrderListViewProtocol {
  func set_layout() {
    view_header.layer.cornerRadius = 40
    view_header.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
  }
}
