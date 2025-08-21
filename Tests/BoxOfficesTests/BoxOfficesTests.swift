import XCTest
@testable import BoxOffices

final class BoxOfficesTests: XCTestCase {

  func test_fetchDailyTop10() async throws {
    let boxOffices = BoxOffices(key: "03473df0bdd2bea306e2ea09dbe58fd8")
    let result = await boxOffices.fetchDailyTop10()
    let topMovies = try result.get()
    
    XCTAssertEqual(topMovies.count, 10)
  }
}
