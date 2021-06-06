@testable import Tamboon
import Foundation

final class CharitiesWorkerSpy: CharitiesWorker {
  var getCharitiesCalledCount = 0
  var getCharitiesStubbedCompletion: (Result<[Charity], Error>)?
  override func getCharities(
    session _: URLSession = .shared,
    completion: @escaping (Result<[Charity], Error>) -> Void
  ) {
    getCharitiesCalledCount += 1
    if let stubbedCompletion = getCharitiesStubbedCompletion {
      completion(stubbedCompletion)
    }
  }
}
