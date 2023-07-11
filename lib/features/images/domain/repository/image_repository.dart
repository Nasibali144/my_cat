import 'package:fpdart/fpdart.dart';
import 'package:my_cat/core/errors/failures/failure.dart';
import 'package:my_cat/core/utils/params/image_search_param.dart';

abstract class ImageRepository {
  const ImageRepository();

  Future<Either<Failure, List>> getAllImages(ImageSearchParam parameter);
}