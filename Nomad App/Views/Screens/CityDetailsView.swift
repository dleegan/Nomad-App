//
//  CityDetailsView.swift
//  Nomad App
//
//  Created by dleegan on 15/12/2024.
//

import SwiftUI

struct CityDetailsView: View {
    let city: City

    var body: some View {
        ScrollView {
            VStack {
                Image("bangkok-thailand")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 250)
                    .overlay(
                        Rectangle()
                            .foregroundStyle(.black.opacity(0.15))
                    )
                    .overlay(content: {
                        VStack {
                            Text(city.name)
                                .font(.system(size: 22, weight: .bold))
                            Text(city.country)
                                .font(.system(size: 12, weight: .semibold))
                        }
                        .foregroundStyle(.white)
                        .shadow(color: .black, radius: 0.8)
                    })

                VStack(spacing: 10) {
                    HStack {
                        Text("Average Monthly Cost:")
                            .font(.system(size: 16, weight: .semibold))
//                        Spacer()
                        Text("$ \(city.averageCost) 💸")
                            .font(.system(size: 16, weight: .regular))
                    }
                    HStack {
                        Text("Weather:")
                            .font(.system(size: 16, weight: .semibold))
                        //                        Spacer()
                        Text("\(city.temperature)°C ☀️")
                            .font(.system(size: 16, weight: .regular))
                    }
                    HStack {
                        Text("Wifi:")
                            .font(.system(size: 16, weight: .semibold))
                        //                        Spacer()
                        Text("\(city.wifi) Mbps🛜")
                            .font(.system(size: 16, weight: .regular))
                    }
                }
                .padding()

                Divider()
            }
        }
        // .ignoresSafeArea()
    }
}

#Preview {
    CityDetailsView(city: previewCollection.cities[0])
}