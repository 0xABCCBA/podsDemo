//
//  Counter.swift
//  Counter
//
//  Created by sparrow on 2021/6/30.
//

import Foundation

public struct Counter {
    public static func getCountDownTime(_ start: String) -> Double {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat="yyyy-MM-dd HH:mm:ss"
        let endDate = dateFormatter.date(from: start)
        
        guard let endDate1 = endDate else {
            return 0
        }
        
        let endTimestamp = endDate1.timeIntervalSince1970
        let currentTimestamp = Date().timeIntervalSince1970
        if endTimestamp < currentTimestamp {
            return 0
        }
        return endTimestamp - currentTimestamp
    }
}
