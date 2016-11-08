//
//  WRKOutCell.swift
//  Workout
//
//  Created by Luke Klepfer on 11/7/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import UIKit

class WRKOutCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleTxt: UILabel!
    @IBOutlet weak var fieldOneTxt: UILabel!
    @IBOutlet weak var fieldTwoTxt: UILabel!
    @IBOutlet weak var fieldThreeTxt: UILabel!
    
    
    @IBOutlet weak var view: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        layer.cornerRadius = WRK_RADIUS
        
    }
    
    func updateUI(wrk: WRKOut) {
        
        //imgView.image = ""
        titleTxt.text = wrk.title
        fieldOneTxt.text = "Muscle: \(wrk.muscle)"
        fieldTwoTxt.text = "Type: \(wrk.type)"
        fieldThreeTxt.text = "Equipment: \(wrk.equip)"
        view.backgroundColor = wrk.color

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
