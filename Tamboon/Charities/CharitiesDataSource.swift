import UIKit.UITableView

class CharitiesDataSource: NSObject, UITableViewDataSource {
  func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
    0
  }

  func tableView(_: UITableView, cellForRowAt _: IndexPath) -> UITableViewCell {
    UITableViewCell()
  }
}
