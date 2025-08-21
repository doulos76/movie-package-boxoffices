//
//  APIClientTests.swift
//  BoxOffices
//
//  Created by dave on 8/21/25.
//

import XCTest
@testable import BoxOffices

final class APIClientTests: XCTestCase {
  func test_fetch() async throws {
    struct Response: Decodable {
      let boxOfficeResult: DailyBoxOfficeResult
      
      struct DailyBoxOfficeResult: Decodable {
        let dailyBoxOfficeList: [DailyBoxOffice]
        
        struct DailyBoxOffice: Decodable {
          let movieCd: String
        }
      }
    }
    
    let apiClient = APIClient(key: "{USER_API_KEY}")
    let response: Response = try await apiClient.fetch(
      path: "boxoffice/searchDailyBoxOfficeList.json",
      httpMethod: .get,
      queryItems: [
        .init(name: "targetDt", value: "20120101")
      ]
    )
    
    XCTAssertEqual(response.boxOfficeResult.dailyBoxOfficeList.count, 10)    
  }
}

