//
//  WeatherModel.swift
//  Clima
//
//  Created by Kevin Le on 8/16/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var strTemperature: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 800:
            return "sun.max"
        case 801...802:
            return "cloud.sun"
        case 803...804:
            return "cloud"
        default:
            return "cloud"
        }
    }

// We don't need the function because we implemented it into the calculated property: conditionName
//
//    func getWeatherCondition(weatherID: Int) -> String {
//        switch weatherID {
//        case 200...232:
//            return "cloud.bolt"
//        case 300...321:
//            return "cloud.drizzle"
//        case 500...531:
//            return "cloud.rain"
//        case 600...622:
//            return "cloud.snow"
//        case 800:
//            return "sun.max"
//        case 801...802:
//            return "cloud.sun"
//        case 803...804:
//            return "cloud"
//        default:
//            return "nothing"
//        }
//    }
    
    
    
    
}



