//
//  AnnouncementViewController.swift
//  Magis
//
//  Created by Johan Ospina on 12/14/14.
//  Copyright (c) 2014 GlobalAppInitiative. All rights reserved.
//

import UIKit

class AnnouncementViewController: UIViewController {
    
    
    @IBOutlet weak var announcementLabel: UILabel!
    
    
    var statement = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        announcementLabel.text = statement
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
