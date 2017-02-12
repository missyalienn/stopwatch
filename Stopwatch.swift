//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Missy Allan on 2/11/17.
//  Copyright © 2017 Your School. All rights reserved.
//

import Foundation


class Stopwatch {
    
    //  Declare startTime as a var and an optional, because its initial value will be set when the Stopwatch starts to track elapsed time, rather than during initialization.
    //

    private var startTime: NSDate?

    
    var elapsedTime: TimeInterval {
        if let startTime = self.startTime {
            return -startTime.timeIntervalSinceNow
        } else {
            return 0
        }
    }

    var isRunning: Bool {
        return startTime != nil
    }
    
    func start() {
         startTime = NSDate()
        
    }
    
    func stop() {
        startTime = nil
        //at the press of stop, startTime has no value
    }
    

    
    
//    Discuss how, when a Stopwatch starts, it keeps track of its start time by assigning a new NSDate to its startTime property.
//     Explain the assignment of nil to an optional property to indicate that it has "no value."
    
//    Why is it important to make the start time a private property, and the elapsed time a read-only, computed property?

    

 }
