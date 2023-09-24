//
//  ResponseParsingTask.swift
//  watch-gpt Watch App
//
//  Created by Tommy Lee on 9/17/23.
//

import Foundation
import Markdown

actor ResponseParsingTask {

  func parse(text: String) async -> AttributedOutput {
    let document = Document(parsing:text)
  }

}