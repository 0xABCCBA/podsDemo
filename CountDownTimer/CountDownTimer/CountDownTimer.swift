//
//  CountDownTimer.swift
//  CountDownTimer
//
//  Created by sparrow on 2021/6/29.
//

import Foundation


/// 计算倒计时时间
struct CountDownTimer {
    
    /// 计算倒计时时间
    /// - Parameter start: 开始的格式化时间
    /// - Returns: 倒计时总时间
    static func getCountDownTime(_ start: String) -> Double {
        
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
