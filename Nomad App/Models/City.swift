//
//  City.swift
//  Nomad App
//
//  Created by dleegan on 15/12/2024.
//

import Foundation

enum AverageWeather {
    case sunny
    case cloudy
    case rainy
}

class City: Identifiable, ObservableObject {
    let id = UUID()
    let rank: Int
    let wifi: Int
    let name: String
    let country: String
    let temperature: Int
    let averageCost: Int
    let averageWeather: AverageWeather

    init(rank: Int, wifi: Int, name: String, country: String, temperature: Int, averageCost: Int, averageWeather: AverageWeather) {
        self.rank = rank
        self.wifi = wifi
        self.name = name
        self.country = country
        self.temperature = temperature
        self.averageCost = averageCost
        self.averageWeather = averageWeather
    }
}
