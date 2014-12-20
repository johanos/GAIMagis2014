//
//  FourthViewController.swift
//  Magis
//
//  Created by Johan Ospina on 12/14/14.
//  Copyright (c) 2014 GlobalAppInitiative. All rights reserved.
//



//CKCalendar Should be here
class FourthViewController: UIViewController, CKCalendarDelegate {
    
    var eventDetailsVC = DetailEventVC()
  
    override func viewDidLoad() {
        super.viewDidLoad()
       
   
        let calendar = CKCalendarView(frame: CGRectMake(0, 60, self.view.bounds.width, self.view.bounds.height));
        calendar.delegate = self;
        self.view.addSubview(calendar);
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let VC: AnyObject = segue.destinationViewController
    
        if VC.isKindOfClass(EventFeedTVC){
       
            
        var eventsListToPass : [String] = ["Bonfire!", "College Visit", "SAT Exam"]
        
        (VC as EventFeedTVC).eventList = eventsListToPass
        (VC as EventFeedTVC).eventsToLoad = eventsListToPass.count
        
        } else if VC.isKindOfClass(DetailEventVC) {
            //do nothing for now
            
            
        }
    
    
    }

    func calendar(calendar: CKCalendarView!, didSelectDate date: NSDate!) {
        //make a connection and segue to the detailed view of the event
            //self.performSegueWithIdentifier("calendarEventSegue", sender: self)
     
        
    }

}

