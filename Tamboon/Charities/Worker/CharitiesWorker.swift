import Foundation

class CharitiesWorker {
  func getCharities(session: URLSession = .shared, completion: @escaping (Result<[Charity], Error>) -> Void) {
    let url = URL(string: "http://localhost:8080/charities")!
    let task = session.dataTask(with: url) { data, response, error in
      if let error = error {
        completion(.failure(error))
        return
      }

      guard let httpResponse = response as? HTTPURLResponse,
            (200 ... 299).contains(httpResponse.statusCode)
      else {
        completion(.failure(APIError.unexpectedResponseCode))
        return
      }

      guard let data = data else {
        completion(.failure(APIError.dataIsNil))
        return
      }

      do {
        let charities = try JSONDecoder().decode([Charity].self, from: data)
        completion(.success(charities))
      } catch {
        completion(.failure(error))
      }
    }

    task.resume()
  }
}
