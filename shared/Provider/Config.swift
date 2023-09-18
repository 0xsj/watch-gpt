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
           case chatGPT(Types) // TODO: probably should rename this
           
       }
       
       func createClient() -> Client {
           switch self.type {
           case .chatGPT(let model):
               return ChatGPTAPI(apiKey: apiKey, model: model.rawValue)
           case default:
               return ChatGPTAPI(apiKey: apiKey, model: model.rawValue)
       }
}
