@testable import Tamboon
import XCTest

class CharitiesInteractorTests: XCTestCase {
  let sut = CharitiesInteractor()
  var charitiesWorkerSpy: CharitiesWorkerSpy!

  override func setUp() {
    super.setUp()
    charitiesWorkerSpy = CharitiesWorkerSpy()
    sut.charitiesWorker = charitiesWorkerSpy
  }

  func test_getCharities_shouldGetFromWorker() {
    sut.getCharities()

    XCTAssertEqual(charitiesWorkerSpy.getCharitiesCalledCount, 1)
  }
}
