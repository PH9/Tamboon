class CharitiesInteractor {
  var charitiesWorker = CharitiesWorker()
  var presenter = CharitiesPresenter()

  func getCharities() {
    charitiesWorker.getCharities { [weak self] result in
      guard let self = self else {
        return
      }

      switch result {
      case let .success(charities):
        self.presenter.present(charities)
      case .failure:
        // TODO: Handle error
        break
      }
    }
  }
}
