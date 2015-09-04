//
//  ResultsVC.swift
//  CoffeeDoc
//
//  Created by Andrew Whipple on 9/4/15.
//  Copyright © 2015 Andrew Whipple. All rights reserved.
//

import UIKit

class ResultsVC: UIViewController {

    var finalCount = 0.0
    
    var notes = ""
    
    @IBOutlet weak var devBrewTimeLabel: UILabel!
    
    @IBAction func perfectButton(sender: UIButton) {
        notes = "Perfect"
        self.performSegueWithIdentifier("showPerfect", sender: nil)
    }
 
    @IBAction func bitterButton(sender: AnyObject) {
        notes = "Bitter"
        self.performSegueWithIdentifier("showPerfect", sender: nil)
    }
    
    @IBAction func weakButton(sender: UIButton) {
        notes = "Weak"
        self.performSegueWithIdentifier("showPerfect", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        devBrewTimeLabel.text = "Brew Time: \(Int(finalCount) / 60):\(Int(finalCount % 60))"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showPerfect") {
            let destinationVC = segue.destinationViewController as! PerfectVC
            destinationVC.brewTime = finalCount
            destinationVC.brewNotes = notes
        }
    
    }
    
    
}

