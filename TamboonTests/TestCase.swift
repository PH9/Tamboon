import FBSnapshotTestCase
import XCTest

// swiftlint:disable force_try
class TestCase: FBSnapshotTestCase {
  func read<T: Decodable>(filename: String) -> T {
    let path = Bundle(for: Self.self).path(forResource: filename, ofType: "json")!
    let url = URL(fileURLWithPath: path)
    let data = try! Data(contentsOf: url)
    return try! JSONDecoder().decode(T.self, from: data)
  }
}

// swiftlint:enable force_try
