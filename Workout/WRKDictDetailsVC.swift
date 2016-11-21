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
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var titleTxt: UILabel!
    @IBOutlet weak var field1: UILabel!
    @IBOutlet weak var field2: UILabel!
    @IBOutlet weak var field3: UILabel!
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var tech: UILabel!
    
    @IBOutlet weak var collection: UICollectionView!
    
    @IBOutlet weak var compImg: UIImageView!
    @IBOutlet weak var compTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
        
        collection.dataSource = self
        collection.delegate = self
        

    }
    
    func setUpUI(){
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
    
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collection.dequeueReusableCell(withReuseIdentifier: "CollectCompCell", for: indexPath) as? WRKCollectionCell{
            
            let wrkCell: WRKOut!
            
                wrkCell = wrk.relatedTitle
                //wrk = wrkArray[indexPath.row]
            
            cell.configureCell(wrk: wrkCell)
            return cell
        }
            
        else{
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print(indexPath)
    }
    private func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    private func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSize(width: 105, height: 105)
    }
    
//    func loadPic(){
//    
//        let url = URL(string: wrk.relatedImg)!
//        
//        DispatchQueue.global().async {
//            
//            do {
//                let data = try Data(contentsOf: url)
//                DispatchQueue.global().sync {
//                    self.relatedImg.image = UIImage(data: data)
//                    
//                }
//            } catch {
//                //handle error
//            }
//        }
//        
//    }
}
