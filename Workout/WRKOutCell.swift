//
//  WRKOutCell.swift
//  Workout
//
//  Created by Luke Klepfer on 11/7/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import UIKit
import FirebaseStorage

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
    
    func updateUI(wrk: WRKOut) {
        
        titleTxt.text = wrk.title
        fieldOneTxt.text = "Description: \(wrk.description)"
        fieldTwoTxt.text = "Technique: \(wrk.tech)"
        fieldThreeTxt.text = "Equipment: \(wrk.equip)"
        view.backgroundColor = wrk.color
        
        let ref = FIRStorage.storage().reference(forURL: wrk.imageURL)
        ref.data(withMaxSize: 2 * 1024 * 1024, completion: {(data, error) in //Calculating = 2MB
            if error != nil {
                print("LUKE: Unable to download image")
            }else{
                print("LUKE: Image downloaded")
                if let imgData = data {
                    if let img = UIImage(data: imgData) {
                        self.imgView.image = img
                        wrk.WRKImage = img
                        //FeedVC.imgCache.setObject(img, forKey: post.imgUrl as NSString)
                    }
                }
            }
        })
    }

    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        
        layer.cornerRadius = WRK_RADIUS
        
    }
    
}
