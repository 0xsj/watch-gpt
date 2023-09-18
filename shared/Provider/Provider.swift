//
//  LMProvider.swift
//  watch-gpt Watch App
//
//  Created by Tommy Lee on 9/17/23.
//

import Foundation

enum Provider: Identifiable, CaseIterable {
    case chatGPT
    case default
    
    var id: Self {self}
    
    var text: String {
        switch self {
        case .chatGPT:
            return "OpenAI ChatGPT"
        default:
            return "OpenAI ChatGPT"
        }
    }
    
    var footerInfo: String {
        switch self {
        case .chatGPT:
            return "GPT"
        case default:
            return "GPT"
        }
    }
//
    var navigationTitle: String {
        switch self {
        case .chatGPT:
            return "XCA ChatGPT"
        case default:
            return "Default"
        }
    }
//
    var imageName: String {
        switch self {
        case .chatGPT
            return "openai"
        case default
            return "default"
            
        }
    }
    
}
