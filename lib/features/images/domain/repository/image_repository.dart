import 'package:fpdart/fpdart.dart';
import 'package:my_cat/core/errors/failures/failure.dart';

abstract class ImageRepository {
  const ImageRepository();

  Future<Either<Failure, List>> getAllImages(int page, int limit);
}