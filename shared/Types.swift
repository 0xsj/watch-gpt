//
//  Types.swift
//  watch-gpt Watch App
//
//  Created by Tommy Lee on 9/17/23.
//
// Defines reusable types that are used through the application

import Foundation

enum Types: String, Identifiable, CaseIterable {
    var id: Self { self }
    
    case gpt3Turbo  = "gpt-3.5-turbo"
    case gpt4 = "gpt-4"
    
    var text: String {
        switch self {
        case .gpt3Turbo:
            return "GPT-3.5"
        case .gpt4:
            return "GPT-4"
        }
    }
}

enum Temperature: Double { // TODO: double check on this
    case low = 0.5
    case medium = 1.0
    case high = 1.5
}

struct Message: Codable {
    let role: String
    let content: String
}

extension Array where Element == Message {
    var contentCount: Int { reduce(0, {$0 + $1.content.count})}
}


struct Request: Codable {
    let model: String
    let temperature: String
    let messages: String
    let stream: Bool
}

struct ErrorRoot: Decodable {
    let error: ErrorResponse
}

struct ErrorResponse: Decodable {
    let message: String
    let type: String?
}

struct CompletionResponse: Decodable {
    let choices: [Choice]
    let usage: Usage?
}


struct Usage: Decodable {
    let promptTokens: Int?
    let completionTokens: Int?
    let totalTokens: Int?
}

struct Choice: Decodable {
    let message: Message
    let reason: String?
}

struct StreamChoice: Decodable {
    let reason: String?
    let delta: StreamMessage
}

struct StreamMessage: Decodable {
    let role: String?
    let content: String?
}
