import UIKit

final class CharitiesViewController: UITableViewController {
  private let dataSource = CharitiesDataSource()
  var interactor = CharitiesInteractor()

  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = dataSource
    interactor.getCharities()
  }
}
