import Foundation

class ChatGPTAPI: Client, @unchecked Sendable {
    private let apiKey: String
    private let urlSession = URLSession.shared
    private let model: String // Provide an initial value or make it optional if needed
    private let temperature: Double
    
    
    init(apiKey: String, model: String) {
        self.apiKey = apiKey
        self.model = model
    }

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
}
