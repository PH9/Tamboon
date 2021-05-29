import UIKit

final class CharitiesViewController: UITableViewController {
  private let dataSource = CharitiesDataSource()

  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = dataSource
  }
}
