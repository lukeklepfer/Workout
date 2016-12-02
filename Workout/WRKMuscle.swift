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
    
    var title: String {
        return _WRKTitle
    }
    var color: UIColor {
        return _WRKColor
    }
    var workouts: Dictionary<String, Bool>{
        return _WRKs
    }
    
    
    init(key: String, data: Dictionary<String, Any>) {
        
        if let title = data["name"]{
            self._WRKTitle = title as? String
        }
        if let workouts = data["workouts"]{
            self._WRKs = workouts as? Dictionary<String, Bool>
        }
        
        _WRKColor = WRK_COLOR_BACK_2
        
        
        if key == "0"{
            _WRKColor = WRK_COLOR_BACK_2
        }
        if key == "1"{
            _WRKColor = WRK_COLOR_BLUE_L
        }
        if key == "2"{
            _WRKColor = WRK_COLOR_BLUE_D
        }
        if key == "3"{
            _WRKColor = WRK_COLOR_PURPLE_D
        }
        if key == "4"{
            _WRKColor = WRK_COLOR_PURPLE_L
        }
        if key == "5"{
            _WRKColor = WRK_COLOR_RED
        }
        if key == "6"{
            _WRKColor = WRK_COLOR_ORANGE
        }
        if key == "7"{
            _WRKColor = WRK_COLOR_YELLOW
        }
        if key == "8"{
           _WRKColor = WRK_COLOR_GREEN_L
        }
        if key == "9"{
            _WRKColor = WRK_COLOR_GREEN_D
        }
        if key == "10"{
            _WRKColor = WRK_COLOR_BROWN
        }
        if key == "11"{
            _WRKColor = WRK_COLOR_BLUE_L
        }
        if key == "12"{
            _WRKColor = WRK_COLOR_BLUE_D
        }
        if key == "13"{
            _WRKColor = WRK_COLOR_PURPLE_D
        }
        if key == "14"{
            _WRKColor = WRK_COLOR_PURPLE_L
        }
        if key == "15"{
            _WRKColor = WRK_COLOR_RED
        }
        if key == "16"{
            _WRKColor = WRK_COLOR_ORANGE
        }

    }
    
    
}
