//
//  ViewController.swift
//  Workout
//
//  Created by Luke Klepfer on 11/7/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import UIKit

class WRKMainDictiVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var wrkOutArray = [WRKOut]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        
        let w1 = WRKOut(imageURL: "image", title: "Push Ups", videoUrl: "Ok")
        let w2 = WRKOut(imageURL: "image", title: "Sit Ups", videoUrl: "Ok")
        let w3 = WRKOut(imageURL: "image", title: "Bench Press", videoUrl: "Ok")
        
        wrkOutArray.append(w1)
        wrkOutArray.append(w2)
        wrkOutArray.append(w3)
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WRKOutCell", for: indexPath) as? WRKOutCell{
            
            let wrkOut = wrkOutArray[indexPath.row]
            cell.updateUI(wrk: wrkOut)
            return cell
        }else{
            return UITableViewCell()
        }

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return wrkOutArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedCell = wrkOutArray[indexPath.row]
        performSegue(withIdentifier: "ShowWRKOutDetail", sender: selectedCell)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? WRKDictDetailsVC {
            
            if let wrk = sender as? WRKOut {
                
                destination.wrk = wrk

            }
        }
    }

}

