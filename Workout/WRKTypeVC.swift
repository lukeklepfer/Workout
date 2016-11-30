//
//  WRKTypeVC.swift
//  Workout
//
//  Created by Luke Klepfer on 11/8/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import UIKit
import FirebaseDatabase

class WRKTypeVC: UITableViewController {
    
    var wrkTypeArray = [WRKMuscle]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataService.ds.REF_TYP.observe(.value, with: { (snapshot ) in
            self.wrkTypeArray = []
            if let snapshot = snapshot.children.allObjects as? [FIRDataSnapshot] {
                for snap in snapshot {
                    //print ("LUKE: \(snap)")
                    if let typDict = snap.value as? Dictionary<String, Any> {
                        let key = snap.key
                        let typ = WRKMuscle(key: key, data: typDict)
                        self.wrkTypeArray.append(typ)
                    }
                }
            }
            self.tableView.reloadData()
        })

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
            
            if let typ = sender as? WRKMuscle {
                
                destination.passedType = typ
                
            }
        }
    }

}
