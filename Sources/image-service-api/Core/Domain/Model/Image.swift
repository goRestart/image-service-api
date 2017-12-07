import CoreService

public struct Image: Codable {
  public let id: Identifier<Image>
  public let url: String
  public let storageUrl: String
}
