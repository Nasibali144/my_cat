import 'package:fpdart/fpdart.dart';
import 'package:my_cat/core/errors/failures/failure.dart';
import 'package:my_cat/core/utils/params/image_pagination_param.dart';
import 'package:my_cat/features/images/domain/entity/image/image_model.dart';
import 'package:my_cat/features/images/domain/repository/image_repository.dart';
import 'image_usecase.dart';

class GetAllImageUsecase
    extends ImageUseCase<List<FullImage>, ImagePaginationParam> {
  final ImageRepository repository;

  const GetAllImageUsecase({required this.repository});

  @override
  Future<Either<Failure, List<FullImage>>> call(ImagePaginationParam parameter) async {
    int page = parameter.page;
    int limit = parameter.limit;
    final result = await repository.getAllImages(page, limit);

    return result.fold(
      (l) => left(l),
      (r) => right(_parseJson(r)),
    );
  }

  List<FullImage> _parseJson(List json) {
    return json.map((item) => FullImage.fromJson(item as Map<String, dynamic>)).toList();
  }
}
