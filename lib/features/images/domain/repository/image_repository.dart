import 'package:fpdart/fpdart.dart';
import 'package:my_cat/core/errors/failures/failure.dart';

abstract class ImageRepository {
  Future<Either<Failure, Map<String, dynamic>>> getAllImages();
}