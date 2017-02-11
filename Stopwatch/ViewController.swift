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
        Timer.scheduledTimer(timeInterval: 0.1, target: self,
                             selector: #selector(ViewController.updateElapsedTimeLabel(_:)), userInfo: nil, repeats: true)
          stopwatch.start()
        

    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
        print("Stopping the watch.")
        stopwatch.stop()
    }

    func updateElapsedTimeLabel(_ timer: Timer) {
        print("Updating...")
        if stopwatch.isRunning {
            let minutes = Int(stopwatch.elapsedTime / 60)
            let seconds = Int(stopwatch.elapsedTime.truncatingRemainder(dividingBy: 60))
            let tenthsOfSecond = Int((stopwatch.elapsedTime * 10).truncatingRemainder(dividingBy: 10))
            elapsedTimeLabel.text = String(format: "%02d:%02d.%d", minutes, seconds, tenthsOfSecond)
        } else {
            timer.invalidate()
        }
    }


}





