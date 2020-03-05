//
//  RequestCodeView.swift
//  Tatun
//
//  Created by LuisCS on 05/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit

class RequestCodeView: UIViewController {
  //MARK: IBOutlets
  @IBOutlet weak var btn_cancel: UIButton!
  @IBOutlet weak var btn_accept: UIButton!
  // MARK: Properties
  var presenter: RequestCodePresenterProtocol?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
  }
  
  @IBAction func cancel_action(_ sender: Any) {
    presenter?.cancel_action()
  }
  
  @IBAction func accept_action(_ sender: Any) {
    presenter?.go_new_password()
  }
}

extension RequestCodeView: RequestCodeViewProtocol {
  func set_layout() {
    GlobalFunctions.sharedInstance.set_border_button(color: "Pink", button: btn_cancel)
    GlobalFunctions.sharedInstance.set_border_button(color: "Blue", button: btn_accept)
    self.navigationController?.navigationBar.isHidden = true
  }
  
  func dissmis_view() {
    self.dismiss(animated: true, completion: nil)
  }
}
