//
//  ClubDetailViewController.swift
//  badinCLUBS
//
//  Created by BHSRam8 on 1/4/17.
//  Copyright © 2017 Jude Graf. All rights reserved.
//

import UIKit

class ClubDetailViewController: UIViewController {
    
    @IBOutlet var ClubNameLabel: UILabel!
    
    @IBOutlet var ClubLeaderLabel: UILabel!
    
    @IBOutlet var ClubFunctionLabel: UILabel!
    
    
    var labelName = " "
    var labelLeader = " "
    var labelFunction = " "


    override func viewDidLoad() {
        super.viewDidLoad()
        
        ClubNameLabel.text = labelName
        ClubLeaderLabel.text = labelLeader
        ClubFunctionLabel.text = labelFunction

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
 
}
