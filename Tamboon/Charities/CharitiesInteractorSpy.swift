@testable import Tamboon

final class CharitiesInteractorSpy: CharitiesInteractor {
  var getCharitiesCalledCount = 0
  override func getCharities() {
    getCharitiesCalledCount += 1
  }
}
