import Foundation

class ChatGPTAPI {
    private let apiKey: String
    private let urlSession = URLSession.shared
    private var urlRequest: URLRequest {
        
        guard let url = URL(string: "https://api.openai.com/v1/completions") else {
            fatalError("Invalid API URL")
        }
        
        var urlRequest = URLRequest(url: url)
        headers.forEach { key, value in
            urlRequest.setValue(value, forHTTPHeaderField: key)
        }
        
        return urlRequest
    }
    
    private var headers: [String: String] {
        [
            "Content-Type": "application/json",
            "Authorization": "Bearer \(apiKey)"
        ]
    }
    
    init(apiKey: String) { // load key on init
        self.apiKey = apiKey
    }
}
