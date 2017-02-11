/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    
    
    let stopwatch = Stopwatch()  // property will be assigned default Stopwatch value when ViewController is initialized
    private var startTime: NSDate?
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func startButtonTapped(_ sender: Any) {
        print("starting stopwatch")
        Timer.scheduledTimer(timeInterval: 1.0, target: self,
                             selector: #selector(ViewController.updateElapsedTimeLabel(_:)), userInfo: nil, repeats: true)
          stopwatch.start()
        

    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
        print("Stopping the watch.")
        stopwatch.stop()
    }

    
    func updateElapsedTimeLabel(_ timer: Timer) {
        print("updating...")
        if stopwatch.isRunning {
            elapsedTimeLabel.text = "\(stopwatch.elapsedTime)"
        } else {
            timer.invalidate()
        }
    }
    

}





