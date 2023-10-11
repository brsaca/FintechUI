//
//  ChartValue.swift
//  FintechUI
//
//  Created by Brenda Saavedra Cantu on 11/10/23.
//

import Foundation

struct ChartValue: Identifiable {
    var id = UUID()
    var day: String
    var value: Double
}

extension ChartValue {
    static let data = [
        ChartValue(day: "Jun 1", value: 200),
        ChartValue(day: "Jun 2", value: 96),
        ChartValue(day: "Jun 3", value: 312),
        ChartValue(day: "Jun 4", value: 256),
        ChartValue(day: "Jun 5", value: 505),
    ]
    static let data2 = [
        ChartValue(day: "Jun 1", value: 20),
        ChartValue(day: "Jun 2", value: 280),
        ChartValue(day: "Jun 3", value: 50),
        ChartValue(day: "Jun 4", value: 440),
        ChartValue(day: "Jun 5", value: 140),
    ]
}
