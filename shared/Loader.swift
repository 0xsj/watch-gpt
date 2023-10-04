//
//  Loader.swift
//  watch-gpt Watch App
//
//  Created by Tommy Lee on 9/17/23.
//
// Loading dots

import Foundation
import SwiftUI

struct Loader : View {
    @State private var showDot1 = false
    @State private var showDot2 = false 
    @State private var showDot3 = false

    var body: some View {
        HStack {
            Circle()
                .opacity(showDot1 ? 1 : 0)
            Circle()
                .opacity(showDot2 ? 1 : 0)
            Circle()
                .opacity(showDot3 ? 1 : 0)
        }
        .foregroundColor(.gray.opacity(0.5))
        .onAppear {performAnimation()}
    }

    func performAnimation() {}
}