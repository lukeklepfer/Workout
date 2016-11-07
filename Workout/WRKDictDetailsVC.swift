//
//  ViewController.swift
//  Workout
//
//  Created by Luke Klepfer on 11/7/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import UIKit

class WRKDictDetailsVC: UIViewController {

    var wrk: WRKOut!
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleTxt: UILabel!
    @IBOutlet weak var field1: UILabel!
    @IBOutlet weak var field2: UILabel!
    @IBOutlet weak var field3: UILabel!
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var tech: UILabel!
    
    @IBOutlet weak var relatedImg: UIImageView!
    @IBOutlet weak var relatedView: UIView!
    @IBOutlet weak var relatedTitle: UILabel!
    
    @IBOutlet weak var compImg: UIImageView!
    @IBOutlet weak var compTitle: UILabel!
    @IBOutlet weak var compView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()

    }
    
    func setUpUI(){
        //image.image = wrk.imageURL
        titleTxt.text = wrk.title
        field1.text = "Muscle: \(wrk.muscle)"
        field2.text = "Type: \(wrk.type)"
        field3.text = "Equipment: \(wrk.equip)"
        webView.backgroundColor = wrk.color
        desc.text = wrk.description
        tech.text = wrk.tech
        
        //relatedImg.image = wrk
        relatedView.backgroundColor = wrk.relatedColor
        relatedTitle.text = wrk.relatedTitle
        
        //compImg.image = wrk
        compView.backgroundColor = wrk.compColor
        compTitle.text = wrk.compTitle
        
    }


}
