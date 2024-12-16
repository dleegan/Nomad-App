//
//  CityCell.swift
//  Nomad App
//
//  Created by dleegan on 15/12/2024.
//

import SwiftUI

struct CityCell: View {
    let city: City

    var body: some View {
        VStack {
            Image("bangkok-thailand")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(content: {
                    Rectangle()
                        .foregroundStyle(.black.opacity(0.15))
                })
                .clipShape(
                    RoundedRectangle(cornerRadius: 16)
                )
                .overlay(content: {
                    VStack {
                        HStack(alignment: .top) {
                            // Rank
                            Text("\(city.rank)")
                                .font(.system(size: 16, weight: .bold))
                            Spacer()
                            // Wifi
                            HStack(alignment: .center) {
                                Image(systemName: "wifi")
                                VStack {
                                    Text("\(city.wifi)")
                                        .font(.system(size: 16, weight: .bold))
                                    Text("Mbps")
                                        .font(.system(size: 10, weight: .bold))
                                }
                            }
                        }
                        Spacer()
                        VStack {
                            Text(city.name)
                                .font(.system(size: 22, weight: .bold))
                            Text(city.country)
                                .font(.system(size: 12, weight: .semibold))
                        }
                        Spacer()
                        HStack {
                            // Température
                            Text("\(getWeatherSymbol()) \(city.temperature)°")
                            Spacer()
                            // Coût moyen
                            Text("$\(city.averageCost) / mo")
                        }
                        .font(.system(size: 16, weight: .bold))
                    }
                    .foregroundStyle(.white)
                    .shadow(color: .black, radius: 0.8)
                    .padding(10)
                })
        }
        .padding(.horizontal)
    }

    func getWeatherSymbol() -> String {
        switch city.averageWeather {
            case .sunny:
                return "☀️"
            case .cloudy:
                return "⛅"
            case .rainy:
                return "🌧️"
        }
    }
}

#Preview {
    CityCell(city: previewCollection.cities[0])
}
