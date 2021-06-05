@testable import Tamboon

final class CharitiesWorkerSpy: CharitiesWorker {
  var getCharitiesCalledCount = 0
  var getCharitiesStubbedCompletion: (Result<Charity, Error>)?
  override func getCharities(completion: (Result<Charity, Error>) -> Void) {
    getCharitiesCalledCount += 1
    if let stubbedCompletion = getCharitiesStubbedCompletion {
      completion(stubbedCompletion)
    }
  }
}
