//
//  LMProvider.swift
//  watch-gpt Watch App
//
//  Created by Tommy Lee on 9/17/23.
//

import Foundation

enum Provider: Identifiable, CaseIterable {
case chatGPT
    
    var id: Self {self}
    
    var text: String {
        switch self {
        case .chatGPT:
            return "OpenAI ChatGPT"
        default:
            return "OpenAI ChatGPT"
        }
    }
    
//    var footerInfo: String {}
//    
//    var navigationTitle: String {}
//    
//    var imageName: string {}
    
}
