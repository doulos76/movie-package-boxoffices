import XCTest
@testable import BoxOffices

final class BoxOfficesTests: XCTestCase {

  func test_fetchDailyTop10() async throws {
    let boxOffices = BoxOffices(key: "{USER_API_KEY}")
    let result = await boxOffices.fetchDailyTop10()
    let topMovies = try result.get()
    
    XCTAssertEqual(topMovies.count, 10)
  }
}
