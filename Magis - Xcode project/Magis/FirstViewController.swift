//
//  FirstViewController.swift
//  Magis
//
//  Created by Johan Ospina on 12/14/14.
//  Copyright (c) 2014 GlobalAppInitiative. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet
    var announcementTableView : UITableView!
    
    
    var tempList: [String] = ["Procrastinator club meeting postponed", "Severe Weather Closed School", "Get your forks out!, its Pancake season!", "Pleae don't fraternize with the wild boars"];
   
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return tempList.count;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell = self.announcementTableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        cell.textLabel?.text = tempList[indexPath.row];
        
        return cell;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("announcementSegue", sender: announcementTableView.cellForRowAtIndexPath(indexPath))
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //do things for segueing
        let vc = segue.destinationViewController as AnnouncementViewController
        vc.statement = "Alex SUCKS"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.announcementTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

