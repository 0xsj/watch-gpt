//
//  Client.swift
//  watch-gpt Watch App
//
//  Created by Tommy Lee on 9/17/23.
//

import Foundation

protocol Client {
    var provider: Provider {get}
    func sendMessage(_text: String) async throws -> String
    func deleteHistoryList()
    func sendMessageStream(text: String) async throws -> AsyncThrowingStream<String, Error>
}
