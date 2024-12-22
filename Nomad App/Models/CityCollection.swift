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
    City(rank: 1, wifi: 27, imageName: "bangkok-thailand", name: "Bangkok", country: "Thaïlande", temperature: 29, averageCost: 1463, averageWeather: .sunny, reviews: []),
    City(rank: 2, wifi: 58, imageName: "buenos-aires-argentina", name: "Buenos-Aires", country: "Argentina", temperature: 29, averageCost: 1104, averageWeather: .rainy, reviews: []),
    City(rank: 3, wifi: 29, imageName: "kuala-lumpur-malaysia", name: "Kuala-lumpur", country: "Malaysia", temperature: 31, averageCost: 917, averageWeather: .sunny, reviews: []),
    City(rank: 4, wifi: 25, imageName: "mexico-city-mexico", name: "Mexico-City", country: "Mexico", temperature: 29, averageCost: 1949, averageWeather: .rainy, reviews: []),
    City(rank: 5, wifi: 15, imageName: "seoul-south-korea", name: "Seoul-south", country: "korea", temperature: 26, averageCost: 1049, averageWeather: .rainy, reviews: []),
    City(rank: 6, wifi: 27, imageName: "tokyo-japan", name: "Tokyo", country: "Japan", temperature: 29, averageCost: 1463, averageWeather: .rainy, reviews: []),
])
