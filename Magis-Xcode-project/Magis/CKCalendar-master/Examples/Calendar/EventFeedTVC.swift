//
//  EventFeedTVC.swift
//  Magis
//
//  Created by Johan Ospina on 12/16/14.
//  Copyright (c) 2014 GlobalAppInitiative. All rights reserved.
//

import UIKit

class EventFeedTVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var EventFeedTableView: UITableView!
    
    var eventsToLoad : Int = 0
    
    var eventList : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.EventFeedTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "eventFeedCell")
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.eventsToLoad
    }
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel?.text = eventList[indexPath.row]
        return cell
    }

    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("ShowDetailsOfEvent", sender: self.EventFeedTableView.cellForRowAtIndexPath(indexPath))
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
