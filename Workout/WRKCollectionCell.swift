//
//  WRKCollectionCell.swift
//  Workout
//
//  Created by Luke Klepfer on 11/20/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import UIKit

class WRKCollectionCell: UICollectionViewCell {
    //CollectCompCell
    
    var wrk: WRKOut!
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        layer.cornerRadius = WRK_RADIUS
        
    }
    
    func configureCell(wrk: WRKOut){
        self.wrk = wrk
        
        nameLbl.text = self.wrk.title
        //thumbImg.image = self.wrk.imageURL
        
    }
}
