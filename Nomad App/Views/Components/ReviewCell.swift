//
//  ReviewCell.swift
//  Nomad App
//
//  Created by dleegan on 22/12/2024.
//

import SwiftUI

struct ReviewCell: View {
    let review: Review

    var body: some View {
        HStack {
            HStack {
                Text(review.text)
            }
            .frame(width: .infinity)

            Spacer()
            VStack(alignment: .center) {
                Image(systemName: "star.fill")
                Text("\(review.note)/5")
            }
        }
        .padding()
        .frame(width: .infinity)
    }
}

#Preview {
    ReviewCell(review: Review(note: 3, text: "this is a note app"))
}
