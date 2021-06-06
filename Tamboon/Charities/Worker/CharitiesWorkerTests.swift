@testable import Tamboon
import XCTest

class CharitiesWorkerTests: XCTestCase {
  func test_getCharities_shouldCallCorrectAPI() {
    let sut = CharitiesWorker()
    let urlSessionSpy = URLSessionSpy()

    sut.getCharities(session: urlSessionSpy, completion: { _ in })

    XCTAssertEqual(urlSessionSpy.dataTaskURL, URL(string: "http://localhost:8080/charities"))
    XCTAssertEqual(urlSessionSpy.urlSessionDataTaskSpy?.resumeCalledCount, 1)
  }
}
