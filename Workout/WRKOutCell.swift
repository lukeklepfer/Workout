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
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(wrk: WRKOut) {
        
        //imageView?.image = wrk.imageURL
        titleTxt.text = wrk.title
        //fieldOneTxt.text = wrk.description
    }
}
