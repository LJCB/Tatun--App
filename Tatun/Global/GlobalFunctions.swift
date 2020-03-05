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
}
