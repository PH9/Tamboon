import UIKit

struct CharityViewModel {
  let name: String
  let logo: URL
}

class CharitiesPresenter {
  weak var viewController: CharitiesViewController?

  func present(_ charities: [Charity]) {
    let viewModel = charities.map { CharityViewModel(name: $0.name, logo: $0.logo_url) }
    viewController?.present(viewModel)
  }
}
