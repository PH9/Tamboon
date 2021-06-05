class CharitiesInteractor {
  var charitiesWorker = CharitiesWorker()

  func getCharities() {
    charitiesWorker.getCharities { result in
      switch result {
      case .success:
        // TODO: Handle success
        break
      case .failure:
        // TODO: Handle error
        break
      }
    }
  }
}
