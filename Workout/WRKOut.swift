//
//  WRKOut.swift
//  Workout
//
//  Created by Luke Klepfer on 11/7/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import Foundation
import UIKit

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
    private var _WRKRelatedTitle: String!
    private var _WRKRelatedImg: String!
    private var _WRKRelatedColor: UIColor!
    private var _WRKComplimentaryTitle: String!
    private var _WRKComplimentaryImg: String!
    private var _WRKComplimentaryColor: UIColor!
    
    private var _WRKRelated = [WRKOut]()
    
    
    
    init(imageURL: String, title: String, videoUrl: String, color: UIColor){
        
        _WRKImageURL = imageURL
        _WRKTitle = title
        _WRKVideoUrl = videoUrl
        _WRKColor = color
        _WRKMuscle = "Back"
        _WRKType = WRKType(title: "Back", color: color)
        _WRKEquipment = "Dumbbell"
        _WRKDescription = "Description: Isolate your \(_WRKMuscle!) and lift, then raise the \(_WRKEquipment!)."
        _WRKTechnique = "Technique: This is the technique for \(_WRKTitle!), you use your \(_WRKMuscle!) and a \(_WRKEquipment!)."
        
        
        _WRKRelatedTitle = "Squat"
        _WRKRelatedImg = ""
        _WRKRelatedColor = WRK_COLOR_RED
        
        _WRKComplimentaryTitle = "Bench Press"
        _WRKComplimentaryImg = ""
        _WRKComplimentaryColor = WRK_COLOR_GREEN_D
        
        
        
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
    var relatedTitle: String{
        return _WRKRelatedTitle
    }
    var relatedImg: String{
        return _WRKRelatedImg
    }
    var relatedColor: UIColor{
        return _WRKRelatedColor
    }
    var compTitle: String{
        return _WRKComplimentaryTitle
    }
    var compImg: String{
        return _WRKComplimentaryImg
    }
    var compColor: UIColor{
        return _WRKComplimentaryColor
    }
    
}
