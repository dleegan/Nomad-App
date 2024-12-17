//
//  CityCollection.swift
//  Nomad App
//
//  Created by dleegan on 15/12/2024.
//

import Foundation

class CityCollection: ObservableObject {
    let cities: [City]

    init(cities: [City]) {
        self.cities = cities
    }
}

let previewCollection = CityCollection(cities: [
    City(rank: 1, wifi: 86, name: "Chiang Mai", country: "Thaïlande", temperature: 30, averageCost: 1044, averageWeather: .sunny, reviews: []),
    City(rank: 2, wifi: 27, name: "Bangkok", country: "Thaïlande", temperature: 29, averageCost: 1463, averageWeather: .sunny, reviews: []),
    City(rank: 3, wifi: 58, name: "Lisbonne", country: "Portugal", temperature: 29, averageCost: 1104, averageWeather: .rainy, reviews: []),
    City(rank: 4, wifi: 29, name: "Canggu", country: "Indonésie", temperature: 31, averageCost: 917, averageWeather: .sunny, reviews: []),
    City(rank: 5, wifi: 25, name: "Koh Chang", country: "Thaïlande", temperature: 29, averageCost: 1949, averageWeather: .rainy, reviews: []),
    City(rank: 6, wifi: 15, name: "Mui Ne", country: "Vietnam", temperature: 26, averageCost: 1049, averageWeather: .rainy, reviews: []),
    City(rank: 7, wifi: 27, name: "Mexico City", country: "Mexique", temperature: 29, averageCost: 1463, averageWeather: .rainy, reviews: []),
    City(rank: 8, wifi: 27, name: "Londres", country: "Royaume-Uni", temperature: 29, averageCost: 1463, averageWeather: .cloudy, reviews: []),
    City(rank: 9, wifi: 27, name: "Istanbul", country: "Turquie", temperature: 29, averageCost: 1463, averageWeather: .rainy, reviews: []),
    City(rank: 10, wifi: 27, name: "Berlin", country: "Allemagne", temperature: 29, averageCost: 1463, averageWeather: .cloudy, reviews: [])
])
