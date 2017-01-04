//
//  ViewController.swift
//  badinCLUBS
//
//  Created by BHSRam8 on 1/4/17.
//  Copyright © 2017 Jude Graf. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var badinClubs = ["club 1", "club 2", "club 3", "club 4", "club 5", "club 6","club 7","club 8","club 9", "club 10" , "club 11"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return badinClubs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier="Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = badinClubs[indexPath.row]
        return cell
    }
    
}

