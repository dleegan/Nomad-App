//
//  Review.swift
//  Nomad App
//
//  Created by dleegan on 18/12/2024.
//

import Foundation

class Review: Identifiable, ObservableObject {
    let id = UUID()
    @Published var note: Int
    @Published var text: String

    init(note: Int, text: String) {
        self.note = note
        self.text = text
    }
}
