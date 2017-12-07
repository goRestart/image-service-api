import CoreService
import Foundation

enum Endpoint {
  case imagesBy([Identifier<Image>])

  var path: String {
    switch self {
    case .imagesBy(let ids):
      return build(for: self, with: ids)
    }
  }
  
  private func build(for endpoint: Endpoint, with ids: [CoreService.Identifier<Image>]) -> String {
    var components = URLComponents()
    components.queryItems = ids.map { URLQueryItem(name: "id", value: $0.value) }
    return "/\(components)"
  }
}
