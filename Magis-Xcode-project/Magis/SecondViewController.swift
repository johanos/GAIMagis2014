//
//  SecondViewController.swift
//  Magis
//
//  Created by Johan Ospina on 12/14/14.
//  Copyright (c) 2014 GlobalAppInitiative. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var importantAnnouncementTextView: UITextView!
    @IBOutlet weak var announcementHeader: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func scholarshipButtonClicked(sender: AnyObject) {
        
        self.performSegueWithIdentifier("scholarships", sender: sender)
    }

    @IBAction func collegeDiscoveryButtonClicked(sender: AnyObject) {
        
        self.performSegueWithIdentifier("CollegeSearch", sender: sender)
        
    }
}

