//
//  ClubTableViewController.swift
//  badinCLUBS
//
//  Created by BHSRam8 on 1/4/17.
//  Copyright © 2017 Jude Graf. All rights reserved.
//

import UIKit

class ClubTableViewController: UITableViewController{
    
    var clubNames = ["Badin Studio Club", "Civics Day Club", "Creative Writing Club", "Culinary Club", "DECA", "French Club", "INTERalliance", "JSA", "Spanish Club", "Spirit Club", "Student Council"]
    
    var clubLeaders = ["Teacher: Mrs. Daniels", "Teachers: Mr. Mears and Mr. Keating", "Teacher: Mr. O'hara", "Teachers: Mr. Gretz and Mrs. Bierbaum", "Teachers: Mr. DeAngelo & Mr. McCabe", "Teacher: Mrs. McAdams", "Teachers: Mr. Memory & Mr. Gretz", "Teacher: Mr. Keating", "Teacher: Mrs. Oliver", "Teacher: Mrs. Suedkamp", "Teachere: Mrs. Keating"]
    
    var clubFunctions = ["Badin Studio club is an organization that pubish's students artwork at Badin Highschool. ", "Civics day club was made to promote civics day at Badin Highschool.", "Creative writing is for students who want to express their feelings through writing. If you like writing, this is the club for you.", "Culinary club is for students who like food. If cooking or eating is your euphoria, you will love culinary club.", "DECA is the club for business students. In DECA, students compete all over the country in business competitions. Winners move on to higher competition. ", "club 6", "club 7", "club 8", "club 9", "club 10", "club 11"]
    
    var clubImages = ["artstudio.jpg", "civicsday.jpg", "writing.jpg", "culinary.jpg", "Deca.jpg", "frenchclub.jpg", "Interalliance.jpg", "JSA.jpg", "spanishclub.jpg", "spiritclub.jpg", "studentcouncil.jpg"]
    
//    var clubImages = " "

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

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
        
        // Configure the cell...
        cell.nameLabel.text = clubNames[indexPath.row]

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

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
