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
}
