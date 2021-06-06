@testable import Tamboon
import XCTest

class CharitiesInteractorTests: TestCase {
  let sut = CharitiesInteractor()
  var charitiesWorkerSpy: CharitiesWorkerSpy!
  var charitiesPresenterSpy: CharitiesPresenterSpy!

  override func setUp() {
    super.setUp()
    charitiesWorkerSpy = CharitiesWorkerSpy()
    sut.charitiesWorker = charitiesWorkerSpy
    charitiesPresenterSpy = CharitiesPresenterSpy()
    sut.presenter = charitiesPresenterSpy
  }

  func test_getCharities_shouldGetFromWorker() {
    sut.getCharities()

    XCTAssertEqual(charitiesWorkerSpy.getCharitiesCalledCount, 1)
  }

  func test_getCharities_ifSuccess_shouldCallPresentCharities() {
    let charities: [Charity] = read(filename: "CharitiesTests")
    charitiesWorkerSpy.getCharitiesStubbedCompletion = .success(charities)

    sut.getCharities()

    XCTAssertEqual(charitiesPresenterSpy.presentCharitiesCalledCount, 1)
  }
}
