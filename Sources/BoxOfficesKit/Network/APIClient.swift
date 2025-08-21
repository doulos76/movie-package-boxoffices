//
//  File.swift
//  BoxOffices
//
//  Created by dave on 8/21/25.
//

import Foundation

class APIClient {
  private let baseuRL = "https://www.kobis.or.kr/kobisopenapi/webservice/rest"
  let key: String
  
  init(key: String) {
    self.key = key
  }
  
  // /boxoffice/searchDailyBoxOfficeList.
  func fetch<Response: Decodable>(
    path: String,
    httpMethod: HttpMethod,
    queryItems: [URLQueryItem]? = nil
  ) async throws -> Response {
    // URLRequest 생성
    
    let urlRequest = try URLRequest(
      urlString: "\(baseuRL)/\(path)",
      httpMethod: httpMethod,
      key: key,
      queryItems: queryItems
    )
    
    // URLSession data
    let (data, urlResponse) = try await URLSession.shared.data(for: urlRequest)
    
    // HTTP URL Response
    if let error = APIError(httpResponse: urlResponse as? HTTPURLResponse) {
      throw error
    }
    
    let output = try JSONDecoder().decode(Response.self, from: data)
    return output
  }
}
