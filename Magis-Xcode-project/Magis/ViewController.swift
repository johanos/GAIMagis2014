//
//  ViewController.swift
//  Magis
//
//  Created by Johan Ospina on 12/21/14.
//  Copyright (c) 2014 GlobalAppInitiative. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource,
    UITableViewDelegate {
    @IBOutlet weak var scholarshipTV: UITableView!

    var scholarships : [String] = ["1", "2", "3" , "4"]
    
    override func viewWillAppear(animated: Bool) {
        scholarshipTV.delegate = self
        scholarshipTV.dataSource = self
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = self.scholarshipTV.dequeueReusableCellWithIdentifier("scholarshipCell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = scholarships[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scholarships.count
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
