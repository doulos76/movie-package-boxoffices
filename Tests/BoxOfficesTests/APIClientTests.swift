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
    // http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=82ca741a2844c5c180a208137bb92bd7&targetDt=20120101
    
    struct Response: Decodable {
      let boxOfficeResult: DailyBoxOfficeResult
      
      struct DailyBoxOfficeResult: Decodable {
        let dailyBoxOfficeList: [DailyBoxOffice]
        
        struct DailyBoxOffice: Decodable {
          let movieCd: String
        }
      }
    }
    
    let apiClient = APIClient(key: "03473df0bdd2bea306e2ea09dbe58fd8")
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

