import CoreService

extension Assembly {
  var getImagesByIds: GetImagesByIds {
    return GetImagesByIds(
      imageService: imageService
    )
  }
}
