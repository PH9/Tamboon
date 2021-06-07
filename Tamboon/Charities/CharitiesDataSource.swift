import UIKit.UITableView

class CharitiesDataSource: NSObject, UITableViewDataSource {
  private var values: [CharityViewModel] = []

  func load(_ values: [CharityViewModel]) {
    self.values.removeAll()
    self.values = values
  }

  func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
    values.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cellReuseIdentifier = "reusableCellIdentifier"
    var cell = tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)
    if cell == nil {
      cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellReuseIdentifier)
    }
    let row = indexPath.row
    cell?.textLabel?.text = values[row].name
    // TODO: Set charity image here
    return cell!
  }
}
