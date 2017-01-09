//
//  ClubDetailViewController.swift
//  badinCLUBS
//
//  Created by BHSRam8 on 1/4/17.
//  Copyright © 2017 Jude Graf. All rights reserved.
//

import UIKit

//new viewcontroller that displays club details

class ClubDetailViewController: UIViewController {
    
    
    @IBOutlet var ClubNameLabel: UILabel!
    
    @IBOutlet var ClubLeaderLabel: UILabel!
    
    @IBOutlet var ClubFunctionLabel: UILabel!
    
    @IBOutlet var ClubImageView: UIImageView!
    
    var labelName = ""
    var labelLeader = ""
    var labelFunction = ""
    var labelImage = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        
        ClubNameLabel.text = labelName
        ClubLeaderLabel.text = labelLeader
        ClubFunctionLabel.text = labelFunction
        ClubImageView.image = UIImage(named: labelImage)
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    
 
}
