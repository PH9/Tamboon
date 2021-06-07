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
    let value = values[row]
    cell?.textLabel?.text = value.name
    if cell?.accessoryView == nil {
      let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 22, height: 22))
      imageView.setImage(with: value.logo)
      cell?.accessoryView = imageView
    } else if let imageView = cell?.accessoryView as? UIImageView {
      imageView.setImage(with: value.logo)
    }
    return cell!
  }
}
