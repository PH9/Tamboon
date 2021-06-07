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

  func present(_ charities: [CharityViewModel]) {
    dataSource.load(charities)
    DispatchQueue.main.async {
      self.tableView.reloadData()
    }
  }
}
