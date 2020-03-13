//
//  CsFramework.swift
//  Tatun
//
//  Created by LuisCS on 12/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class CsFramework: NSObject {
  static let sharedInstance = CsFramework()
  func show_simple_alert(view_controller: UIViewController, title: String, message: String, button_tittle: String) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: button_tittle, style: .default, handler: nil))
    view_controller.present(alert, animated: true)
  }
}



