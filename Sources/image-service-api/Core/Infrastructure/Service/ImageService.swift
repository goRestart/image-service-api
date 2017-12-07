import CoreService
import Vapor
import Foundation

struct ImageService {
  
  private let client: ClientProtocol
  
  init(client: ClientProtocol) {
    self.client = client
  }
  
  func get(with ids: [CoreService.Identifier<Image>]) throws -> [Image]? {
    let json = try unwrap(.imagesBy(ids))
    return try json?.makeResponse().decodeJSONBody()
  }

  private func unwrap(_ endpoint: Endpoint) throws -> JSON? {
    do {
      let response = try client.get(endpoint.path)
      guard response.status == .ok,
        let json = response.json else {
          return nil
      }
      return json
    } catch {
      return nil
    }
  }
}

