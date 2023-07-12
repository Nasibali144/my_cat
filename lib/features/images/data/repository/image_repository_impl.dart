import 'package:fpdart/fpdart.dart';
import 'package:my_cat/common/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:my_cat/core/errors/exceptions/network_exceptions.dart';
import 'package:my_cat/core/errors/failures/failure.dart';
import 'package:my_cat/core/errors/failures/network_failure.dart';
import 'package:my_cat/core/errors/failures/unexpected_failure.dart';
import 'package:my_cat/core/utils/apis/apis.dart';
import 'package:my_cat/core/utils/params/image_search_param.dart';
import 'package:my_cat/features/images/domain/repository/image_repository.dart';

class ImageRepositoryImpl extends ImageRepository {
  final RemoteDataSource remoteDataSource;

  const ImageRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List>> getAllImages(ImageSearchParam parameter) async {
    try {
      /// TODO: 1. check ? remote : local

      final data = await remoteDataSource.methodGet(Api.images, param: parameter.toParam) as List;
      return right(data);
    } on NetworkException catch (e) {
      return left(NetworkFailure(e.message));
    } catch (e) {
      return left(UnexpectedFailure(e.toString()));
    }
  }
}
