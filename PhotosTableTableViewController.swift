//
//  PhotosTableTableViewController.swift
//  projectC
//
//  Created by PASCAL ARINGO ODEK on 12/18/14.
//  Copyright (c) 2014 Pascal Odek. All rights reserved.
//

import UIKit

class PhotosTableTableViewController: UITableViewController {

    var photos=[Photo]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var newPhoto=Photo(name: "Emerald Bay", filename: "emeraldbay", notes: "Emerald Bay is the best fish city in Kisumu")
        photos.append(newPhoto)
        
        newPhoto=Photo(name: "A Joshua Tree", filename: "joshuatree", notes: "This tree is known to cure fatigue and reduce weight.")
        photos.append(newPhoto)
        
        newPhoto=Photo(name: "Sunset in Ventura", filename: "sunset", notes: "The sunset here makes those who experience it immortal")
        photos.append(newPhoto)
        
        newPhoto=Photo(name: "Snowman at Lake Tahoe", filename: "snowman", notes: "If you don't love olaf you need to seek medical attention")
        photos.append(newPhoto)
        
        newPhoto=Photo(name: "Red Rock", filename: "redrock", notes: "This is the reddest thing known, dead and alive")
        photos.append(newPhoto)
        

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

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return photos.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("photoCell", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        
        var currentPhoto=photos[indexPath.row]
        cell.textLabel?.text=currentPhoto.name

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        var secondScene = segue.destinationViewController as DisplayViewController
        
        // Pass the selected object to the new view controller.
        
        if let indexPath = self.tableView.indexPathForSelectedRow(){
            
            let selectedPhoto=photos[indexPath.row]
            secondScene.currentPhoto=selectedPhoto
        }
    }
    

}
