//
//  WRKTypeCell.swift
//  Workout
//
//  Created by Luke Klepfer on 11/8/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import UIKit

class WRKTypeCell: UITableViewCell {

    
    @IBOutlet weak var view: WRKView!
    @IBOutlet weak var label: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        //layer.cornerRadius = WRK_RADIUS
        
    }
    
    func updateUI(wrkType: WRKMuscle) {
        
        label.text = wrkType.title
        view.backgroundColor = wrkType.color
        
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
