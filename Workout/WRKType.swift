//
//  WRKType.swift
//  Workout
//
//  Created by Luke Klepfer on 11/8/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import Foundation
import UIKit

class WRKType {
    
    private var _WRKTitle: String!
    private var _WRKColor: UIColor!
    
    
    init(title: String, color: UIColor) {
        
        _WRKTitle = title
        _WRKColor = color
        
    }
    
    var title: String {
        return _WRKTitle
    }

    var color: UIColor {
        return _WRKColor
    }
}
