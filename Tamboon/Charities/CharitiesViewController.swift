import UIKit

final class CharitiesViewController: UITableViewController {
  private let dataSource = CharitiesDataSource()
  var interactor = CharitiesInteractor()

  override func viewDidLoad() {
    super.viewDidLoad()
    interactor.presenter.viewController = self
    tableView.dataSource = dataSource
    interactor.getCharities()
  }

  func present(_: [CharityViewModel]) {
    // TODO: set charities to dataSource
  }
}
