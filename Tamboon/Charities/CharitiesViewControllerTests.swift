@testable import Tamboon
import XCTest

final class CharitiesViewControllerTests: TestCase {
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

  // TODO: Snapshot here
  func test_presentCharities() {
    sut.present([
      CharityViewModel(name: "name1", logo: URL(string: "scheme://domain/path.extension")!),
    ])

    let numberOfRowInSection = sut.tableView.dataSource?.tableView(sut.tableView, numberOfRowsInSection: 0)
    XCTAssertEqual(numberOfRowInSection, 1)
  }
}
