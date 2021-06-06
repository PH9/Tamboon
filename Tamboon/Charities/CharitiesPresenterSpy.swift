@testable import Tamboon
import XCTest

final class CharitiesPresenterSpy: CharitiesPresenter {
  var presentCharitiesCalledCount = 0
  var presentCharitiesCharities: [Charity]?
  override func present(_ charities: [Charity]) {
    presentCharitiesCalledCount += 1
    presentCharitiesCharities = charities
  }
}
