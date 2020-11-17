//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timerProgress: UIProgressView!
    @IBOutlet weak var secondsLabel: UILabel!
    
    let eggTimes = ["Soft": 240, "Medium": 360, "Hard": 600]
    var totalTime = 60
    var eggTimer = Timer()
    var secondsPassed = 0
    
    /*
     let softTime = 5
     let mediumTime = 8
     let hardTime = 12
    */
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        eggTimer.invalidate()
        
        let hardness = sender.currentTitle! // Assigns the button to 'hardness'
        
        totalTime = eggTimes[hardness]!
        secondsPassed = 0
        
        eggTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        /* .scheduledTimer allows for the countdown timer to function. selector: #selector() requires a function to 'call'.
            ensure that the timer repeats so that it doesn't just stop after 1 interval. */
    }
    
    @objc func updateCounter() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            titleLabel.text = "Cooking..."
            timerProgress.progress = Float(secondsPassed) / Float(totalTime)
            secondsLabel.text = "\(secondsPassed) / \(totalTime)"
        } else {
            eggTimer.invalidate()
            timerProgress.progress = 1.0
            secondsLabel.text = "\(totalTime) / \(totalTime)"
            titleLabel.text = "Done!"
        }
        
        
    }
        
        
        /*
         switch hardness {
         case "Soft":
             print(softTime)
         case "Medium":
             print(mediumTime)
         case "Hard":
             print(hardTime)
         default:
             print("Error")
         }
         // Switch statements can be used as an alternative to if/else if/else statements.
         */
    


}
