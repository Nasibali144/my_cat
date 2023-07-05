import 'package:fpdart/fpdart.dart';
import 'package:my_cat/core/errors/failures/failure.dart';
import 'package:my_cat/core/utils/params/image_pagination_param.dart';
import 'package:my_cat/features/images/domain/entity/image/image_model.dart';
import 'package:my_cat/features/images/domain/repository/image_repository.dart';

import 'image_usecase.dart';

class GetAllImageUsecase extends ImageUseCase<FullImage, ImagePaginationParam> {
  final ImageRepository repository;

  const GetAllImageUsecase({required this.repository});

  @override
  Future<Either<Failure, FullImage>> call(ImagePaginationParam parameter) {
    // TODO: implement call
    throw UnimplementedError();
  }



}