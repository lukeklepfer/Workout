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
    private var _WRKType: String!
    private var _WRKEquipment: String!
    private var _WRKRelatedTitle: String!
    private var _WRKRelatedImg: String!
    private var _WRKRelatedColor: UIColor!
    private var _WRKComplimentaryTitle: String!
    private var _WRKComplimentaryImg: String!
    private var _WRKComplimentaryColor: UIColor!
    
    
    
    
    init(imageURL: String, title: String, videoUrl: String, color: UIColor){
        
        _WRKImageURL = imageURL
        _WRKTitle = title
        _WRKVideoUrl = videoUrl
        _WRKDescription = "Description of Excersize"
        _WRKTechnique = "Technique of Excersize"
        _WRKColor = color
        _WRKMuscle = "Back"
        _WRKType = "Body Weight"
        _WRKEquipment = "Dumbbell"
        
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
    var type: String{
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
