//
//  WRKTypeVC.swift
//  Workout
//
//  Created by Luke Klepfer on 11/8/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import UIKit

class WRKTypeVC: UITableViewController {
    
    var wrkTypeArray = [WRKType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testData()

    }
    
    func testData(){
        let w1 = WRKType(title: "Abdominals", color: WRK_COLOR_BLUE_L)
        let w2 = WRKType(title: "Back", color: WRK_COLOR_BLUE_D)
        let w3 = WRKType(title: "Chest", color: WRK_COLOR_PURPLE_D)
        let w4 = WRKType(title: "Deltoids", color: WRK_COLOR_PURPLE_L)
        let w5 = WRKType(title: "Glutes", color: WRK_COLOR_RED)
        let w6 = WRKType(title: "Hamstring", color: WRK_COLOR_ORANGE)
        let w7 = WRKType(title: "Quadriceps", color: WRK_COLOR_YELLOW)
        let w8 = WRKType(title: "Calves", color: WRK_COLOR_GREEN_L)
        let w9 = WRKType(title: "Triceps", color: WRK_COLOR_GREEN_D)
        let w10 = WRKType(title: "Biceps", color: WRK_COLOR_BROWN)
        
        wrkTypeArray.append(w1)
        wrkTypeArray.append(w2)
        wrkTypeArray.append(w3)
        wrkTypeArray.append(w4)
        wrkTypeArray.append(w5)
        wrkTypeArray.append(w6)
        wrkTypeArray.append(w7)
        wrkTypeArray.append(w8)
        wrkTypeArray.append(w9)
        wrkTypeArray.append(w10)
    }

    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "WRKTypeCell", for: indexPath) as? WRKTypeCell{
            
            let wrkType = wrkTypeArray[indexPath.row]
            cell.updateUI(wrkType: wrkType)
            return cell
        }else{
            return UITableViewCell()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return wrkTypeArray.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedCell = wrkTypeArray[indexPath.row]
        performSegue(withIdentifier: "ShowWRKOutVC", sender: selectedCell)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? WRKMainDictVC {
            
            if let typ = sender as? WRKType {
                
                destination.passedType = typ
                
            }
        }
    }

}
