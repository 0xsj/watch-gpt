//
//  File.swift
//  watch-gpt Watch App
//
//  Created by Tommy Lee on 9/17/23.
//

import Foundation

class ChatGPTAPI {
    private let apiKey: String
    private let urlSession = URLSession.shared
    private var urlRequest: URLRequest {
        let url = URL(string: "https://api.openai.com/v1/completions")
        var urlRequest = URLRequest(url: URL)
        
        return urlRequest
    }
    
    private var headers: [String: String] {
        
    }
    
    init(apiKey: String) { // load key on init
        self.apiKey = apiKey
    }
}
