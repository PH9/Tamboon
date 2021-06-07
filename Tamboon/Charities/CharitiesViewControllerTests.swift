@testable import Tamboon
import XCTest

final class CharitiesViewControllerTests: TestCase {
  var sut: CharitiesViewController!
  var interactorSpy: CharitiesInteractorSpy!

  override func setUp() {
    super.setUp()
    sut = CharitiesViewController()
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

  func test_presentCharities() {
    sut.view.frame = CGRect(x: 0, y: 0, width: 320, height: 320)

    sut.present([
      CharityViewModel(name: "Name ", logo: .placeholder),
      CharityViewModel(name: "This is very long name. I don't know why we need a very long name.", logo: .placeholder),
    ])

    FBSnapshotVerifyView(sut.view)
  }
}
