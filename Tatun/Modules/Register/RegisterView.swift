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

class RegisterView: UIViewController {
  
  @IBOutlet weak var view_map: GMSMapView!
  
  let locationManager = CLLocationManager()
  // MARK: Properties
  var presenter: RegisterPresenterProtocol?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
  }
}

extension RegisterView: RegisterViewProtocol {
  func set_google_maps_delegate() {
    locationManager.delegate = self
  }
  
  func get_user_location() {
    print("Iniciando para obtener ubicación del usuario")
    locationManager.requestAlwaysAuthorization()
  }
  
  func set_layout() {
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
  }
}
