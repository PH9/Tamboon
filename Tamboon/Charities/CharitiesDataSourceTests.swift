@testable import Tamboon
import XCTest

class CharitiesDataSourceTests: XCTestCase {
  let sut = CharitiesDataSource()

  func test_cellShouldContainsTextLabelAndDetailsLabel_withReuseableIdentifier() {
    let placeholderTableView = UITableView()
    sut.load([
      CharityViewModel(name: .placeholder, logo: .placeholder),
    ])

    let cell = sut.tableView(placeholderTableView, cellForRowAt: IndexPath(row: 0, section: 0))

    XCTAssertNotNil(cell.textLabel)
    XCTAssertNotNil(cell.detailTextLabel)
    XCTAssertEqual(cell.reuseIdentifier, "reusableCellIdentifier")
  }
}
