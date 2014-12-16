//
//  FourthViewController.swift
//  Magis
//
//  Created by Johan Ospina on 12/14/14.
//  Copyright (c) 2014 GlobalAppInitiative. All rights reserved.
//



//CKCalendar Should be here
class FourthViewController: UIViewController, CKCalendarDelegate {
    
    let dateFormater : NSDateFormatter = NSDateFormatter()
  
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormater.dateFormat = "MM/dd/yyyy"
       
   
        let calendar = CKCalendarView(frame: CGRectMake(0, 60, self.view.bounds.width, self.view.bounds.height));
        self.view.addSubview(calendar);
        calendar.delegate = self
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    //@IBAction func goToEventFeedTV(sender: AnyObject) {
        //the storyboard is calling prepareForSegue for us and performSegueWithIdentifier

   // }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let VC = segue.destinationViewController as EventFeedTVC
        
        var eventsListToPass : [String] = ["Bonfire!", "College Visit", "SAT Exam"]
        
        VC.eventList = eventsListToPass
        VC.eventsToLoad = eventsListToPass.count
        
    }
    
    func calendar(calendar: CKCalendarView!, didSelectDate date: NSDate!) {
        println("I chose a Date! its: \(dateFormater.stringFromDate(date!))")
        
        var detailsVC : DetailEventVC = DetailEventVC()
        
        self.presentViewController(detailsVC, animated: true, completion: {println("completed push") })
        
        
    }
}
