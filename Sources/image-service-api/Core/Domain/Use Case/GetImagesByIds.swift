import CoreService

struct GetImagesByIds {
  
  private let imageService: ImageService
  
  init(imageService: ImageService) {
    self.imageService = imageService
  }
  
  func execute(with ids: [Identifier<Image>]) throws -> [Image]? {
    return try imageService.get(with: ids)
  }
}

// MARK: - Public initializer

extension GetImagesByIds {
  public init() {
    self.init(imageService: resolver.imageService)
  }
}
