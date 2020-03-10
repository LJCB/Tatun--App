//
//  TablesListView.swift
//  Tatun
//
//  Created by LuisCS on 09/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class TablesListView: UIViewController {
  
  // MARK: Properties
  var presenter: TablesListPresenterProtocol?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
  }
}

extension TablesListView: TablesListViewProtocol {
  func set_tab_bar_delegate() {
    self.tabBarController?.delegate = self
  }
}

extension TablesListView: UITabBarControllerDelegate{
  func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    print("Did select mesas :\(viewController.tabBarItem.tag)")
    var tabBarController = UITabBarController()
    tabBarController = GlobalFunctions.sharedInstance.init_tab_bar(item_selected: viewController.tabBarItem.tag)
    self.present(tabBarController, animated: false, completion: nil)
    
  }
}
