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
    
    @IBOutlet weak var devBrewTimeLabel: UILabel!
    
    @IBAction func perfectButton(sender: UIButton) {
        self.performSegueWithIdentifier("showPerfect", sender: nil)
    }
 
    @IBAction func bitterButton(sender: AnyObject) {
        self.performSegueWithIdentifier("showBitter", sender: nil)
    }
    
    @IBAction func weakButton(sender: UIButton) {
        self.performSegueWithIdentifier("showWeak", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        devBrewTimeLabel.text = "Brew Time: \(finalCount)"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showBitter") {
            let destinationVC = segue.destinationViewController as! TooBitterVC
            destinationVC.brewTime = finalCount
        } else if (segue.identifier == "showWeak") {
            let destinationVC = segue.destinationViewController as! TooWeakVC
            destinationVC.brewTime = finalCount
        }
    
    }
    
    
}

