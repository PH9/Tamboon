@testable import Tamboon
import XCTest

final class CharitiesViewControllerTests: XCTestCase {
  let sut = CharitiesViewController()
  var interactorSpy: CharitiesInteractorSpy!

  override func setUp() {
    super.setUp()
    interactorSpy = CharitiesInteractorSpy()
    sut.interactor = interactorSpy
  }

  func test_charitiesViewController_dataSource_shouldBeCharitiesDataSource() {
    sut.viewDidLoad()

    XCTAssert(sut.tableView.dataSource is CharitiesDataSource)
  }

  func test_viewDidLoad_shouldCallGetCharitiesOnce() {
    _ = sut.view

    XCTAssertEqual(interactorSpy.getCharitiesCalledCount, 1)
  }
}
