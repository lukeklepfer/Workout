//
//  ViewController.swift
//  Workout
//
//  Created by Luke Klepfer on 11/7/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import UIKit

class WRKDictDetailsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    var wrk: WRKOut!
    var wrkOutArray = [WRKOut]()
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleTxt: UILabel!
    @IBOutlet weak var field1: UILabel!
    @IBOutlet weak var field2: UILabel!
    @IBOutlet weak var field3: UILabel!
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var tech: UILabel!
    @IBOutlet weak var collection: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.dataSource = self
        collection.delegate = self
        
        testData()
        setUpUI(wrk: wrk)

    }
    
    func setUpUI(wrk: WRKOut){
        //image.image = wrk.imageURL
        titleTxt.text = wrk.title
        field1.text = "Muscle: \(wrk.muscle)"
        field2.text = "Type: \(wrk.type.title)"
        field3.text = "Equipment: \(wrk.equip)"
        webView.loadHTMLString(wrk.videoUrl, baseURL: nil)
        webView.backgroundColor = wrk.color
        desc.text = wrk.description
        tech.text = wrk.tech
    }
    
    func testData(){
        let url = "<iframe width=\"368\" height=\"178\" src=\"https://www.youtube.com/embed/5Jv5Qxs7ovQ\" frameborder=\"0\" allowfullscreen></iframe>"
        
        
        let w1 = WRKOut(imageURL: "image", title: "Push Ups", videoUrl: url, color: WRK_COLOR_BLUE_L)
        let w2 = WRKOut(imageURL: "image", title: "Sit Ups", videoUrl: url, color: WRK_COLOR_BLUE_D)
        let w3 = WRKOut(imageURL: "image", title: "Bench Press", videoUrl: url, color: WRK_COLOR_PURPLE_D)
        let w4 = WRKOut(imageURL: "image", title: "Crunches", videoUrl: url, color: WRK_COLOR_PURPLE_L)
        let w5 = WRKOut(imageURL: "image", title: "Curls", videoUrl: url, color: WRK_COLOR_RED)
        let w6 = WRKOut(imageURL: "image", title: "Dips", videoUrl: url, color: WRK_COLOR_ORANGE)
        let w7 = WRKOut(imageURL: "image", title: "Squats", videoUrl: url, color: WRK_COLOR_YELLOW)
        let w8 = WRKOut(imageURL: "image", title: "Leg Curls", videoUrl: url, color: WRK_COLOR_GREEN_L)
        let w9 = WRKOut(imageURL: "image", title: "Toe Raise", videoUrl: url, color: WRK_COLOR_GREEN_D)
        let w10 = WRKOut(imageURL: "image", title: "Leg Raise", videoUrl: url, color: WRK_COLOR_BROWN)
        
        wrkOutArray.append(w1)
        wrkOutArray.append(w2)
        wrkOutArray.append(w3)
        wrkOutArray.append(w4)
        wrkOutArray.append(w5)
        wrkOutArray.append(w6)
        wrkOutArray.append(w7)
        wrkOutArray.append(w8)
        wrkOutArray.append(w9)
        wrkOutArray.append(w10)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collection.dequeueReusableCell(withReuseIdentifier: "CollectCompCell", for: indexPath) as? WRKCollectionCell{
            
            let wrkCell: WRKOut!
                wrkCell = wrkOutArray[indexPath.row]
            cell.configureCell(wrk: wrkCell)
            return cell
        }
            
        else{
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        setUpUI(wrk: wrkOutArray[indexPath.item])
        
        let url = "<iframe width=\"368\" height=\"178\" src=\"https://www.youtube.com/embed/5Jv5Qxs7ovQ\" frameborder=\"0\" allowfullscreen></iframe>"
        wrkOutArray.removeAll()
        let w1 = WRKOut(imageURL: "image", title: "1", videoUrl: url, color: WRK_COLOR_RED)
        let w2 = WRKOut(imageURL: "image", title: "2", videoUrl: url, color: WRK_COLOR_PURPLE_D)
        wrkOutArray.append(w1)
        wrkOutArray.append(w2)
        
        collection.reloadData()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return wrkOutArray.count
    }

    private func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    private func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: 105, height: 105)
    }
    
}
