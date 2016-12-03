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
    var WRKImage: UIImage!
    private var _WRKTitle: String!
    private var _WRKVideoUrl: String!
    private var _WRKDescription: String!
    private var _WRKTechnique: String!
    private var _WRKColor: UIColor!
    private var _WRKMuscle: Dictionary<String, String>!
    private var _WRKEquipment: String!
    private var _WRKKey: String!
    private var _WRKRelated: Dictionary<String, Bool>!
    
    
    init(key: String, data: Dictionary<String, Any>) {

        _WRKColor = WRK_COLOR_YELLOW
        
        if let title = data["name"]{
            self._WRKTitle = title as? String
        }
        if let imgUrl = data["imgUrl"]{
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
        if let vid = data["videoUrl"]{
            self._WRKVideoUrl = vid as? String
        }
        if let related = data["related"]{
            self._WRKRelated = related as? Dictionary<String, Bool>
        }
        if let muscle = data["muscle"]{
            self._WRKMuscle = muscle as? Dictionary<String, String>
            //print("LUKE: \(muscle)")
            let key = _WRKMuscle.keys.dropFirst().first
            
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

    var imageURL: String {
        return _WRKImageURL
    }
//    var image: UIImage {
//        return _WRKImage
//    }
    var key: String {
        return _WRKKey
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
    var muscle: Dictionary<String, String>{
        return _WRKMuscle
    }
    var equip: String{
        return _WRKEquipment
    }
    var related: Dictionary<String, Bool>{
        return _WRKRelated
    }
    
}
