//
//  CW_Serv_User.swift
//  Conquer World
//
//  Created by Manu S. Stier on 20/4/18.
//  Copyright © 2018 Manu S. Stier. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

struct CW_Serv_User {
    
    private let servDB = DB_Collection().users
    
    func createUser(_ uidUser: String!, completionHandler: @escaping CompletionBool){
        
        let profile: ProfileAnyHashable = [
            "name":"your name",
            "surname":"your surname",
            "creationDate": FieldValue.serverTimestamp(),
            "email": (Auth.auth().currentUser?.email)!
        ]
        servDB.document(uidUser).setData(profile) { (error) in
            if let error = error {
                completionHandler(error.localizedDescription, false)
            } else {
                completionHandler(nil, true)
            }
        }
    }
    
    
    
    
    
}
