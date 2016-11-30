//
//  WRKOut.swift
//  Workout
//
//  Created by Luke Klepfer on 11/7/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import Foundation
import UIKit
import Firebase

class WRKOut {
    
    private var _WRKImageURL: String!
    private var _WRKTitle: String!
    private var _WRKVideoUrl: String!
    private var _WRKDescription: String!
    private var _WRKTechnique: String!
    private var _WRKColor: UIColor!
    private var _WRKMuscle: String!
    private var _WRKType: WRKType!
    private var _WRKEquipment: String!
    
    
    
    init(key: String, data: Dictionary<String, Any>) {
        
        _WRKColor = WRK_COLOR_GREEN_D
        
        if let title = data["name"]{
            self._WRKTitle = title as? String
        }
        if let imgUrl = data["img"]{
            self._WRKImageURL = imgUrl as? String
        }
        if let desc = data["description"]{
            self._WRKDescription = desc as? String
        }
        if let equip = data["equipment"]{
            self._WRKEquipment = equip as? String
        }
        if let tech = data["technique"]{
            self._WRKTechnique = tech as? String
        }
        if let vid = data["video"]{
            self._WRKVideoUrl = vid as? String
        }
//        if let related = data["related"]{
//            self._WRKRelatedTitle = desc as? String
//        }
    }
    
    var imageURL: String {
        return _WRKImageURL
    }
    var title: String {
        return _WRKTitle
    }
    var videoUrl: String{
        return _WRKVideoUrl
    }
    var description: String {
        return _WRKDescription
    }
    var tech: String{
        return _WRKTechnique
    }
    var color: UIColor{
        return _WRKColor
    }
    var muscle: String{
        return _WRKMuscle
    }
    var type: WRKType{
        return _WRKType
    }
    var equip: String{
        return _WRKEquipment
    }
    
}
