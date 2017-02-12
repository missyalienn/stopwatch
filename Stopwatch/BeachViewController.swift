//
//  BeachViewController.swift
//  Stopwatch
//
//  Created by Missy Allan on 2/12/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import UIKit

class BeachViewController: UIViewController {

    let stopwatch = Stopwatch()
    let timer = Timer()
    private var startTime: NSDate?
    

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var beachElapsedTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func beachRelaxTapped(_ sender: Any) {
        print("Starting stopwatch")
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(BeachViewController.updateBeachElapsedTime(_:)), userInfo: nil, repeats: true)
        stopwatch.start()
    }
    
    

    
    @IBAction func beachStopTapped(_ sender: Any) {
        print("Stopwawtch stopped")
        stopwatch.stop()
        
    }
    
    
    func updateBeachElapsedTime(_timer: Timer) {
        print("Beach Timer updating")
        if stopwatch.isRunning {
            let minutes = Int(stopwatch.elapsedTime/60)
            let seconds = Int(stopwatch.elapsedTime.truncatingRemainder(dividingBy: 60))
            beachElapsedTimeLabel.text = String(format: "%02d:%02d.%d", minutes, seconds)
        } else {
            timer.invalidate()
        }
    }
    
}
        

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

