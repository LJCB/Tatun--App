//
//  RegisterRemoteDataManager.swift
//  Tatun
//
//  Created by LuisCS on 02/03/20.
//  Copyright © 2020 CS. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseCore
import FirebaseFirestoreSwift
import Firebase

class RegisterRemoteDataManager:RegisterRemoteDataManagerInputProtocol {
  var remoteRequestHandler: RegisterRemoteDataManagerOutputProtocol?
  var db : Firestore!
  
  func register_bussines_access(name: String, email: String, phone: String, direction: String, password: String, open_hour: String, close_hour: String, category_id: Int, latitude: String, longitude: String) {
    Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
      if error != nil {
        self.remoteRequestHandler?.register_error(message: error?.localizedDescription ?? "")
      }else{
        self.remoteRequestHandler?.user_auth_created(name: name, email: email, phone: phone, direction: direction, password: password, open_hour: open_hour, close_hour: close_hour, category_id: category_id, latitude: latitude, longitude: longitude)
      }
    }
  }
  
  func store_bussines_data(name: String, email:String,  phone: String, direction: String, password: String, open_hour: String, close_hour: String, category_id: Int, latitude: String, longitude: String) {
    let settings = FirestoreSettings()
    Firestore.firestore().settings = settings
    db = Firestore.firestore()
    let bussines_data: [String:Any] = [
      "category_id": category_id,
      "direction": direction,
      "latitude": latitude,
      "longitude": longitude,
      "name": name,
      "close_hour": close_hour,
      "open_hour": open_hour,
      "phone": phone,
    ]
    
    db.collection("negocios").document(phone).setData(bussines_data) { (error) in
      if let err = error {
        print("Error writing document: \(err)")
      } else {
        print("Document successfully written!")
        self.remoteRequestHandler?.register_success()
      }
    }
  }
  
  func get_categories_from_server() {
    var array_categories: [category] = [category]()
    let settings = FirestoreSettings()
    Firestore.firestore().settings = settings
    db = Firestore.firestore()
    
    let collection_ref  = db.collection("categorias")
    collection_ref.getDocuments { (document, error) in
      for i in 0..<document!.count{
        let doc_ref  = collection_ref.document("\(i+1)")
        doc_ref.getDocument { (document, error) in
          if let data = document?.data(){
            let obj_category = category()
            obj_category.name = data["name"] as? String ?? ""
            obj_category.id_category = data["id_categoria"] as? Int ?? 0
            array_categories.append(obj_category)
          }
          self.remoteRequestHandler?.categories_recived(categories: array_categories)
          
        }
      }
    }
  }
  
  
}
