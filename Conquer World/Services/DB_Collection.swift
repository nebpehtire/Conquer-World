//
//  DB_Collection.swift
//  Conquer World
//
//  Created by Manu S. Stier on 20/4/18.
//  Copyright © 2018 Manu S. Stier. All rights reserved.
//

import Foundation
import FirebaseFirestore

struct DB_Collection {
    
    let mainDB = Firestore.firestore()
    
    var users: CollectionReference {
        return mainDB.collection("USERS")
    }
}
