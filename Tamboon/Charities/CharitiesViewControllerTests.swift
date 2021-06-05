@testable import Tamboon
import XCTest

final class CharitiesViewControllerTests: XCTestCase {
  func test_charitiesViewController_dataSource_shouldBeCharitiesDataSource() {
    let sut = CharitiesViewController()

    sut.viewDidLoad()

    XCTAssert(sut.tableView.dataSource is CharitiesDataSource)
  }

  func test_viewDidLoad_shouldCallGetCharities() {
    let sut = CharitiesViewController()
    let interactorSpy = CharitiesInteractorSpy()
    sut.interactor = interactorSpy

    _ = sut.view

    XCTAssertEqual(interactorSpy.getCharitiesCalledCount, 1)
  }
}
