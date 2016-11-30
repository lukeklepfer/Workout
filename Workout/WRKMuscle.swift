//
//  WRKType.swift
//  Workout
//
//  Created by Luke Klepfer on 11/8/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import Foundation
import UIKit

class WRKMuscle {
    
    private var _WRKTitle: String!
    private var _WRKColor: UIColor!
    private var _WRKs: Dictionary<String, Bool>!
    
    
    init(key: String, data: Dictionary<String, Any>) {
        
        _WRKColor = WRK_COLOR_RED        
        
        if let title = data["name"]{
            self._WRKTitle = title as? String
        }
        if let workouts = data["workouts"]{
            self._WRKs = workouts as? Dictionary<String, Bool>
        }
        
    }
    
    var title: String {
        return _WRKTitle
    }
    var color: UIColor {
        return _WRKColor
    }
    var workouts: Dictionary<String, Bool>{
        return _WRKs
    }
}
