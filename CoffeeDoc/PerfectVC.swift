//
//  perfectVC.swift
//  CoffeeDoc
//
//  Created by Andrew Whipple on 9/4/15.
//  Copyright © 2015 Andrew Whipple. All rights reserved.
//

import UIKit

class PerfectVC: UIViewController {
    
    var brewTime = 0.0
    
    var brewNotes = ""
    
    @IBOutlet weak var suggestionsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if (brewNotes == "Perfect") {
            suggestionsLabel.text = "Awesome! Glad everything tasted great!"
        } else if (brewNotes == "Bitter") {
            if (brewTime > 200) {
                suggestionsLabel.text = "Try grinding the coffee a bit coarser."
            } else {
                suggestionsLabel.text = "Try waiting a bit longer after boiling the water (let it cool down a bit more.)"
            }
        } else if (brewNotes == "Weak") {
            if (brewTime < 160) {
                suggestionsLabel.text = "Try grinding the coffee a bit finer."
            } else {
                suggestionsLabel.text = "Try pouring sooner after the water boils."
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
