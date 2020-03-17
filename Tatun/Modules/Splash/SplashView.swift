//
//  SplashView.swift
//  Tatun
//
//  Created by LuisCS on 17/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class SplashView: UIViewController {
  
  // MARK: Properties
  var presenter: SplashPresenterProtocol?
  
  // MARK: Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
  }
}

extension SplashView: SplashViewProtocol {
  // TODO: implement view output methods
}
