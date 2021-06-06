import Foundation

class URLSessionSpy: URLSession {
  var dataTaskURL: URL?
  var dataTaskDataStubbed: Data?
  var dataTaskURLResponseStubbed: URLResponse?
  var dataTaskErrorStubbed: Error?
  override func dataTask(
    with url: URL,
    completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void
  ) -> URLSessionDataTask {
    defer {
      completionHandler(dataTaskDataStubbed, dataTaskURLResponseStubbed, dataTaskErrorStubbed)
    }
    dataTaskURL = url
    return URLSessionDataTaskSpy()
  }
}
