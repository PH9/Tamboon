import UIKit.UITableView

class CharitiesDataSource: NSObject, UITableViewDataSource {
  func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
    0
  }

  func tableView(_ tableView: UITableView, cellForRowAt _: IndexPath) -> UITableViewCell {
    let cellReuseIdentifier = "reusableCellIdentifier"
    var cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)
    if cell == nil {
      cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellReuseIdentifier)
    }
    return cell!
  }
}
