//
//  WorkoutViewController.swift
//  IntervalTimer
//
//  Created by Laura Artiles on 2/26/17.
//  Copyright © 2017 Laura Artiles. All rights reserved.
//

import UIKit
import Foundation

class WorkoutViewController: UIViewController {
    var timer = Timer()
    var counter = 0
    var timerDidStart = false
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var startAndResetButton: UIButton!
    
    @IBAction func startTimer(_ sender: UIButton) {
        startAndResetButton.titleLabel?.text = "Reset"
        timer = Timer.scheduledTimer(timeInterval: 1, target:self, selector: #selector(WorkoutViewController.updateTimeLabel), userInfo: nil, repeats: true)
        timerDidStart = true
        
    }
    @IBAction func stopTimer(_ sender: UIButton) {
        timer.invalidate()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateTimeLabel() {
        let minutes = Int(counter / 60)
        let seconds =  counter - minutes * 60
        timeLabel.text = String(format:"%02i:%02i",minutes,Int(seconds))
        counter += 1
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
