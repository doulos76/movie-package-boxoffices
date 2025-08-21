//
//  File.swift
//  BoxOffices
//
//  Created by dave on 8/21/25.
//

import Foundation

extension URLRequest {
  init(
    urlString: String,
    httpMethod: HttpMethod,
    key: String,
    queryItems: [URLQueryItem]?
  ) throws {
    // URLComponents
    guard var components = URLComponents(string: urlString) else { throw APIError.urlIsInvalid }
    
    // Query Items
    components.queryItems = [URLQueryItem(name: "key", value: key)]
    if let queryItems {
      components.queryItems?.append(contentsOf: queryItems)
    }
    // URL Reqeust
    guard let url = components.url else { throw APIError.urlIsInvalid }
    self.init(url: url)
    
    // HTTP Method
    self.httpMethod = httpMethod.capitalizedValue
  }
}
