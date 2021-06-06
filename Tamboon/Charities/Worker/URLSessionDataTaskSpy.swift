import Foundation

class URLSessionDataTaskSpy: URLSessionDataTask {
  var resumeCalledCount = 0
  override func resume() {
    resumeCalledCount += 1
  }
}
