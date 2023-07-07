import 'package:my_cat/core/utils/params/param.dart';

class ImageSearchParam extends Param {
  final ImageSize? size;
  final MimeTypes? mimeTypes;
  final ImageOrder? order;
  final int page;
  final int limit;
  final int? categoryId;
  final String? breedId;
  final bool? hasBreeds;
  final bool? includeBreeds;
  final bool? includeCategories;

  const ImageSearchParam({
    this.size,
    this.mimeTypes,
    this.order,
    required this.page,
    required this.limit,
    this.categoryId,
    this.breedId,
    this.hasBreeds,
    this.includeBreeds,
    this.includeCategories,
  });

  Map<String, String> get toParam => {
        'page': page.toString(),
        'limit': limit.toString(),
        if (size != null) 'size': size!.name,
        if (mimeTypes != null) 'mime_types': mimeTypes!.name,
        if (order != null) 'order': order!.name,
        if (categoryId != null) 'category_ids': categoryId.toString(),
        if (breedId != null) 'breed_ids': breedId.toString(),
        if (hasBreeds != null) 'has_breeds': hasBreeds.toString(),
        if (includeBreeds != null) 'include_breeds': includeBreeds.toString(),
        if (includeCategories != null)
          'include_categories': includeCategories.toString(),
      };
}

enum ImageSize {
  thumb,
  small,
  med,
  full,
}

enum MimeTypes {
  jpg,
  png,
  gif,
}

enum ImageOrder {
  RANDOM,
  ASC,
  DESC,
}
