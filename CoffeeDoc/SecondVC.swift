//
//  SecondVC.swift
//  CoffeeDoc
//
//  Created by Andrew Whipple on 9/3/15.
//  Copyright © 2015 Andrew Whipple. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    var timerStarted = false
    
    var timer = NSTimer()
    
    var counter = 0.0
    
    @IBOutlet weak var instructionsLabel: UILabel!
    @IBOutlet weak var progress: UIProgressView!
    
    @IBOutlet weak var pourButtonOutlet: UIButton!
    
    @IBAction func pourButtonAction(sender: UIButton) {
        if (!timerStarted) {
            timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "updateProgress", userInfo: nil, repeats: true)
            counter = 0
            pourButtonOutlet.setTitle("Pouring Finished", forState: UIControlState.Normal)
            timerStarted = true
        } else {
            timer.invalidate()
            timerStarted = false
            self.performSegueWithIdentifier("showResults", sender: nil)
        }
    }
   
    
    
    func updateProgress() {
        if (counter > 30) {
            instructionsLabel.text = "Continue pouring slowly until all the water is poured."
        }
        counter += 1.0
        progress.progress = Float(counter / 180.0)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        progress.progress = 0.0
        instructionsLabel.text = "Slowly pour just enough water to submerge the grounds"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "showResults") {
            let destinationVC = segue.destinationViewController as! ResultsVC
            destinationVC.finalCount = counter
        }
        
        
	}
    
    
}

