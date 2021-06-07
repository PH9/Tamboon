import Foundation.NSURL

extension String {
  static let placeholder = "placeholder"
}

extension URL {
  static let placeholder = URL(string: "scheme://domain/path?query1=value1")!
}
