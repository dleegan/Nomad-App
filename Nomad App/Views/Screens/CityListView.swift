//
//  CityListView.swift
//  Nomad App
//
//  Created by dleegan on 15/12/2024.
//

import SwiftUI

struct CityListView: View {
    @StateObject var myCollection: CityCollection = previewCollection

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(myCollection.cities) { city in
                        NavigationLink(destination: {
                            CityDetailsView(city: city)
                        }, label: {
                            CityCell(city: city)
                        })
                    }
                }
            }
            .navigationTitle("Cities")
        }
    }
}

#Preview {
    CityListView()
}
