//
//  LLMClient.swift
//  watch-gpt Watch App
//
//  Created by Tommy Lee on 9/17/23.
//

import Foundation

struct Config: Identifiable, Hashable {
    
    var id: String { apiKey }
       
       let apiKey: String
       let type: ConfigType
       
       enum ConfigType: Hashable {
           case chatGPT(ChatGPTModel)
           case palm
       }
       
       func createClient() -> LLMClient {
           switch self.type {
           case .chatGPT(let model):
               return ChatGPTAPI(apiKey: apiKey, model: model.rawValue)
           case .palm:
               return PaLMChatAPI(apiKey: apiKey)
           }
       }
}
