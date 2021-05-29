@testable import Tamboon
import XCTest

final class CharitiesViewControllerTests: XCTestCase {
  func test_charitiesViewController_dataSource_shouldBeCharitiesDataSource() {
    let sut = CharitiesViewController()

    sut.viewDidLoad()

    XCTAssert(sut.tableView.dataSource is CharitiesDataSource)
  }
}
