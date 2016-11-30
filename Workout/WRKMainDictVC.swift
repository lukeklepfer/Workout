//
//  ViewController.swift
//  Workout
//
//  Created by Luke Klepfer on 11/7/16.
//  Copyright © 2016 Luke. All rights reserved.
//

import UIKit
import FirebaseDatabase

class WRKMainDictVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var wrkOutArray = [WRKOut]()
    var passedType: WRKMuscle!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        
        DataService.ds.REF_WRK.observe(.value, with: { (snapshot ) in
            self.wrkOutArray = []
            if let snapshot = snapshot.children.allObjects as? [FIRDataSnapshot] {
                for snap in snapshot {
                    //print ("LUKE: \(snap)")
                    if let wrkDict = snap.value as? Dictionary<String, Any> {
                        let key = snap.key
                        let wrk = WRKOut(key: key, data: wrkDict)
                        self.wrkOutArray.append(wrk)
                    }
                }
            }
            self.tableView.reloadData()
        })
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

