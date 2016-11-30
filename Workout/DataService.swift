//
//  DataService.swift
//  Workout
//
//  Created by Luke Klepfer on 11/29/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase
import FirebaseStorage

let DB_BASE = FIRDatabase.database().reference() //Url refs saved in GoogleService-info.plist
let STOR_BASE = FIRStorage.storage().reference()


class DataService {
    
    static let ds = DataService()//creates singletin
    
    //Database
    private var _REF_BASE = DB_BASE
    private var _REF_WRK = DB_BASE.child("workouts")
    
    //Storage
    private var _REF_STOR_POST_PICS = STOR_BASE.child("wrk-pics")
    
    
    var REF_WRK: FIRDatabaseReference {
        return _REF_WRK
    }
    
}
