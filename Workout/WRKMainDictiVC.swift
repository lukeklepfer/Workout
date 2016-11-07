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
        
        testData()
        
        tableView.delegate = self
        tableView.dataSource = self
    
        
        
    }
    
    func testData(){
        let w1 = WRKOut(imageURL: "image", title: "Push Ups", videoUrl: "Ok", color: WRK_COLOR_BLUE_L)
        let w2 = WRKOut(imageURL: "image", title: "Sit Ups", videoUrl: "Ok", color: WRK_COLOR_BLUE_D)
        let w3 = WRKOut(imageURL: "image", title: "Bench Press", videoUrl: "Ok", color: WRK_COLOR_PURPLE_D)
        let w4 = WRKOut(imageURL: "image", title: "Crunches", videoUrl: "Ok", color: WRK_COLOR_PURPLE_L)
        let w5 = WRKOut(imageURL: "image", title: "Curls", videoUrl: "Ok", color: WRK_COLOR_RED)
        let w6 = WRKOut(imageURL: "image", title: "Dips", videoUrl: "Ok", color: WRK_COLOR_ORANGE)
        let w7 = WRKOut(imageURL: "image", title: "Squats", videoUrl: "Ok", color: WRK_COLOR_YELLOW)
        let w8 = WRKOut(imageURL: "image", title: "Leg Curls", videoUrl: "Ok", color: WRK_COLOR_GREEN_L)
        let w9 = WRKOut(imageURL: "image", title: "Toe Raise", videoUrl: "Ok", color: WRK_COLOR_GREEN_D)
        let w10 = WRKOut(imageURL: "image", title: "Leg Raise", videoUrl: "Ok", color: WRK_COLOR_BROWN)
        
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

