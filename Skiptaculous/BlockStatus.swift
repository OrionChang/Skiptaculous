//
//  BlockStatus.swift
//  Skiptaculous
//
//  Created by Orion Chang on 10/21/14.
//  Copyright (c) 2014 Orion. All rights reserved.
//

import Foundation

class BlockStatus {
    var isRunning = false
    var timeGapForNextRun = UInt32(0)
    var currentInterval = UInt32(0)
    
    
    init(isRunning:Bool, timeGapForNextRun:UInt32, currentInterval:UInt32) {
        self.isRunning = isRunning
        self.timeGapForNextRun = timeGapForNextRun
        self.currentInterval = currentInterval
    }
    
    func shouldRunBlock() -> Bool {
        return self.currentInterval > self.timeGapForNextRun
    }
}