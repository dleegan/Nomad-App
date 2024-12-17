//
//  CityDetailsView.swift
//  Nomad App
//
//  Created by dleegan on 15/12/2024.
//

import SwiftUI

struct CityDetailsView: View {
    @ObservedObject var city: City
    @State var note: Int = 2
    @State var text: String = ""

    var body: some View {
        ScrollView {
            VStack {
                Image("bangkok-thailand")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: .infinity)
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
                        Spacer()
                        Text("$ \(city.averageCost) 💸")
                            .font(.system(size: 16, weight: .regular))
                    }
                    HStack {
                        Text("Weather:")
                            .font(.system(size: 16, weight: .semibold))
                        Spacer()
                        Text("\(city.temperature)°C \(city.getWeatherSymbol())")
                            .font(.system(size: 16, weight: .regular))
                    }
                    HStack {
                        Text("Wifi:")
                            .font(.system(size: 16, weight: .semibold))
                        Spacer()
                        Text("\(city.wifi) Mbps 🛜")
                            .font(.system(size: 16, weight: .regular))
                    }
                }
                .padding()

                Divider()

                VStack(spacing: 10) {
                    Text("Reviews:")
                        .bold()

                    TextEditor(text: $text)
                        .padding(5)
                        .frame(height: 150)
                        .textEditorStyle(.plain)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(lineWidth: 1)
                                .stroke(.placeholder.opacity(0.5))
                        }

                    Button {
                        city.postReview(note: note, text: text)
                        note = 0
                        text = ""
                    } label: {
                        Text("Post Review")
                    }
                }
                .frame(width: .infinity, alignment: .leading)
                .padding()

                VStack {
                    Text("review.text")
                    ForEach(city.reviews) { review in
                        Text(review.text)
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    CityDetailsView(city: previewCollection.cities[0])
}
