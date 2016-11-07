//
//  WRKOut.swift
//  Workout
//
//  Created by Luke Klepfer on 11/7/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import Foundation

class WRKOut {
    
    private var _WRKImageURL: String!
    private var _WRKTitle: String!
    private var _WRKVideoUrl: String!
    private var _WRKDescription: String!
    private var _WRKTechnique: String!
    
    
    
    
    init(imageURL: String, title: String, videoUrl: String){
        
        _WRKImageURL = imageURL
        _WRKTitle = title
        _WRKVideoUrl = videoUrl
        
        
    }
    
    var imageURL: String {
        return _WRKImageURL
    }
    var title: String {
        return _WRKTitle
    }
    var description: String {
        return _WRKDescription
    }
    
}
