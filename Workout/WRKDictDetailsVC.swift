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

        setUpUI(wrk: wrk)

    }
    
    func setUpUI(wrk: WRKOut){
        image.image = wrk.WRKImage
        webView.loadHTMLString(wrk.videoUrl, baseURL: nil)
        webView.backgroundColor = wrk.color
        titleTxt.text = wrk.title
        field1.text = wrk.imageURL
        field2.text = wrk.videoUrl
        field3.text = wrk.equip
        desc.text = wrk.description
        tech.text = wrk.tech
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
