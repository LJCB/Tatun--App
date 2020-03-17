//
//  RegisterView.swift
//  Tatun
//
//  Created by LuisCS on 02/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps
import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift

class RegisterView: UIViewController {
  
  @IBOutlet weak var view_map: GMSMapView!
  @IBOutlet var txt_input_data: [UITextField]!
  
  //MARK: Constant and variables
  let locationManager = CLLocationManager()
  let picker_category: UIPickerView = UIPickerView()
  var categories: [category] = [category]()
  var category_selected: category = category()
  var latitude: String = String()
  var longitude: String = String()
  
  // MARK: Properties
  var presenter: RegisterPresenterProtocol?
  
  // MARK: Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
  }
  
  
  
  @objc func set_hour(sender:UIDatePicker){
    let dateFormat = DateFormatter()
    dateFormat.dateStyle = DateFormatter.Style.medium
    dateFormat.timeStyle = DateFormatter.Style.none
    dateFormat.dateFormat = "yyyy-MM-dd HH:mm:ss"
    dateFormat.dateFormat = "HH:mm"
    print("Tag de picker: \(sender.tag)")
    if sender.tag == 1{
      txt_input_data[4].text = "\(dateFormat.string(from: sender.date))"
    }else{
      txt_input_data[5].text = "\(dateFormat.string(from: sender.date))"
    }
  }
  
  @objc func dismiss_keyboard(){
    self.view.endEditing(true)
  }
  
  func setup_keyboard_dismiss_recognizer(){
    let tapRecognizer: UITapGestureRecognizer = UITapGestureRecognizer(
      target: self,
      action: #selector(self.dismiss_keyboard))
    self.view.addGestureRecognizer(tapRecognizer)
    tapRecognizer.cancelsTouchesInView = true
  }
  
  @IBAction func store_action(_ sender: Any) {
    presenter?.get_new_data(name: txt_input_data[0].text ?? "", email: txt_input_data[7].text ?? "", phone: txt_input_data[1].text ?? "", direction: txt_input_data[2].text ?? "", password: txt_input_data[3].text ?? "", open_hour: txt_input_data[4].text ?? "", close_hour: txt_input_data[5].text ?? "", category_id: category_selected.id_category, latitude: latitude, longitude: longitude)
  }
}

extension RegisterView: RegisterViewProtocol {
  
  func show_warning_alert(message: String) {
    CsFramework.sharedInstance.show_simple_alert(view_controller: self, title: "Datos incompletos", message: message, button_tittle: "Aceptar")
  }
  
  func reload_picker_data(categories: [category]) {
    self.categories = categories
    picker_category.reloadAllComponents()
  }
  
  func set_pickers() {
    picker_category.backgroundColor = UIColor(red: 255, green: 255, blue:255, alpha: 0.6)
    picker_category.delegate = self
    picker_category.dataSource = self
    
    let picker_open_hour = UIDatePicker()
    picker_open_hour.backgroundColor = UIColor(red: 255, green: 255, blue:255, alpha: 0.6)
    picker_open_hour.datePickerMode = UIDatePicker.Mode.time
    picker_open_hour.locale = Locale(identifier: "es_MX")
    picker_open_hour.tag = 1
    picker_open_hour.addTarget(self, action: #selector(set_hour(sender:)), for: UIControl.Event.valueChanged)
    
    
    let picker_close_hour = UIDatePicker()
    picker_close_hour.backgroundColor = UIColor(red: 255, green: 255, blue:255, alpha: 0.6)
    picker_close_hour.datePickerMode = UIDatePicker.Mode.time
    picker_close_hour.locale = Locale(identifier: "es_MX")
    picker_close_hour.tag = 2
    picker_close_hour.addTarget(self, action: #selector(set_hour(sender:)), for: UIControl.Event.valueChanged)
    
    
    
    //toolbar
    let tool_bar = UIToolbar(frame: CGRect(x: 0, y: 20, width: self.view.frame.size.width, height: 40))
    tool_bar.barStyle = UIBarStyle.default
    tool_bar.isTranslucent = false
    tool_bar.barTintColor = UIColor.white
    tool_bar.tintColor = UIColor.blue
    tool_bar.sizeToFit()
    
    //buttons
    let done_button = UIBarButtonItem(title: "Listo", style: UIBarButtonItem.Style.plain, target: self, action: #selector(self.dismiss_keyboard))
    done_button.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor(red: 0/255, green: 81/255, blue: 155/255, alpha: 1)], for: UIControl.State())
    let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
    
    tool_bar.setItems([spaceButton, done_button], animated: false)
    tool_bar.isUserInteractionEnabled = true
    
    txt_input_data[4].inputView = picker_open_hour
    txt_input_data[4].inputAccessoryView = tool_bar
    txt_input_data[5].inputView = picker_close_hour
    txt_input_data[5].inputAccessoryView = tool_bar
    txt_input_data[6].inputView = picker_category
    txt_input_data[6].inputAccessoryView = tool_bar
  }
  
  func set_google_maps_delegate() {
    locationManager.delegate = self
  }
  
  func get_user_location() {
    print("Iniciando para obtener ubicación del usuario")
    locationManager.requestAlwaysAuthorization()
  }
  
  func set_layout() {
    setup_keyboard_dismiss_recognizer()
    GlobalFunctions.sharedInstance.custom_nav_bar(view_controller: self)
    
  }
}

extension RegisterView: CLLocationManagerDelegate{
  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    print("Moviendo camara")
    if let location = locations.first {
      view_map.camera = GMSCameraPosition(target: location.coordinate, zoom: 20, bearing: 0, viewingAngle: 0)
      locationManager.stopUpdatingLocation()
    }
  }
  
  func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
    if status == .authorizedWhenInUse || status == .authorizedAlways{
      print("Iniciando a actualizar la ubicacion del usuario")
      locationManager.startUpdatingLocation()
      view_map.isMyLocationEnabled = false
      view_map.settings.myLocationButton = false
    }
  }
}

extension RegisterView: GMSMapViewDelegate{
  func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
    print("Coordenadas del negocio: Lat:\(position.target.latitude), Lon:\(position.target.longitude)")
    
    latitude = "\(position.target.latitude)"
    longitude = "\(position.target.longitude)"
  }
}

extension RegisterView: UIPickerViewDelegate, UIPickerViewDataSource{
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return categories.count + 1
  }
  
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    if row == 0{
      return "Seleccione una opción"
    }else{
      return categories[row-1].name
    }
  }
  
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    if row == 0{
      txt_input_data[6].text = ""
      category_selected = category()
    }else{
      txt_input_data[6].text = categories[row-1].name
      category_selected = categories[row-1]
    }
  }
}
