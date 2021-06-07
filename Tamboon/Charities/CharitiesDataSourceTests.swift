@testable import Tamboon
import XCTest

class CharitiesDataSourceTests: XCTestCase {
  let sut = CharitiesDataSource()

  func test_cellShouldContainsTextLabelAndDetailsLabel_withReuseableIdentifier() {
    let placeholderTableView = UITableView()
    sut.load([
      CharityViewModel(name: .placeholder, logo: .placeholder),
    ])

    let cell = sut.tableView(placeholderTableView, cellForRowAt: .init())

    XCTAssertNotNil(cell.textLabel)
    XCTAssertNotNil(cell.detailTextLabel)
    XCTAssertEqual(cell.reuseIdentifier, "reusableCellIdentifier")
  }
}
