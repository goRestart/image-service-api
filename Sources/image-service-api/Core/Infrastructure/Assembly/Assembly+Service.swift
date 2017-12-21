import CoreService

extension Assembly {
  var imageService: ImageService {
    return ImageService(
      clientProvider: self
    )
  }
}
