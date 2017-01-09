//
//  ClubTableViewController.swift
//  badinCLUBS
//
//  Created by BHSRam8 on 1/4/17.
//  Copyright © 2017 Jude Graf. All rights reserved.
//

import UIKit

class ClubTableViewController: UITableViewController{
    
    // badinclubs button
    
    var tapCount = 0
    @IBAction func touchButton(_ sender: AnyObject) {
        print("buttontapped")
        
        tapCount=tapCount + 1
        print(tapCount)
    }
    
    // arrays for clubs
    
    var clubNames = ["Badin Studio Club", "Civics Day Club", "Creative Writing Club", "Culinary Club", "DECA", "French Club", "INTERalliance", "JSA", "Spanish Club", "Spirit Club", "Student Council"]
    
    var clubLeaders = ["Teacher: Mrs. Daniels", "Teachers: Mr. Mears and Mr. Keating", "Teacher: Mr. O'hara", "Teachers: Mr. Gretz and Mrs. Bierbaum", "Teachers: Mr. DeAngelo & Mr. McCabe", "Teacher: Mrs. McAdams", "Teachers: Mr. Memory & Mr. Gretz", "Teacher: Mr. Keating", "Teacher: Mrs. Oliver", "Teacher: Mrs. Suedkamp", "Teachere: Mrs. Keating"]
    
    var clubFunctions = [
        "Badin Studio club is an organization that pubish's students artwork at Badin Highschool. ",
        "Civics day club was made to promote civics day at Badin Highschool.", "Creative writing is for students who want to express their feelings through writing. If you like writing, this is the club for you.",
        "Culinary club is for students who like food. If cooking or eating is your euphoria, you will love culinary club.",
        "DECA is the club for business students. In DECA, students compete all over the country in business competitions. Winners move on to higher competition. ",
        "French Club is for the students who want to learn about French culture or eat French foods.",
        "INTERalliance is a club organized in Cincinnati. It is for highschool tech students who want to reach out to local businesses for possible internships.",
        "JSA is a club made for students who like to argue. It's a debate club for students to argue current issues.",
        "Spanish Club is for the students who want to learn about Spanish culture or eat Spanish foods. ",
        "Spirit Club is for the students at Badin to be in charge of all school spirit related activities.", "Student Cuncil is the organization of students at Badin Highschool that holds the council. Such as President/Vice President."]
    
    var clubImages = ["artstudio.jpg", "civicsday.jpg", "writing.jpg", "culinary.jpg", "Deca.jpg", "frenchclub.jpg", "Interalliance.jpg", "JSA.jpg", "spanishclub.jpg", "spiritclub.jpg", "studentcouncil.jpg"]
    
    //override functions

    override func viewDidLoad() {
        super.viewDidLoad()

            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return clubNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ClubTableViewCell
        
       
        cell.nameLabel.text = clubNames[indexPath.row]

        return cell
    }
    

    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showClubDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! ClubDetailViewController
                destinationController.labelName = clubNames[indexPath.row]
                destinationController.labelLeader = clubLeaders[indexPath.row]
                destinationController.labelFunction = clubFunctions[indexPath.row]
                destinationController.labelImage = clubImages[indexPath.row]
            }
        }
    }
}
