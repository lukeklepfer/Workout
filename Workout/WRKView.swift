//
//  WRKView.swift
//  Workout
//
//  Created by Luke Klepfer on 11/7/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import UIKit

class WRKView: UIView {

    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        layer.cornerRadius = WRK_RADIUS
        //layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.5).cgColor
        //layer.shadowOpacity = 0.8
        //layer.shadowRadius = 5.0 //blur size
        //layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
    }

}
