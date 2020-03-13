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

class RegisterRemoteDataManager:RegisterRemoteDataManagerInputProtocol {
  
  var remoteRequestHandler: RegisterRemoteDataManagerOutputProtocol?
  var db : Firestore!
  
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
