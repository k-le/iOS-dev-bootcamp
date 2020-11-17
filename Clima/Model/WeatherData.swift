//
//  WeatherData.swift
//  Clima
//
//  Created by Kevin Le on 8/15/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//


struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let id: Int
}




