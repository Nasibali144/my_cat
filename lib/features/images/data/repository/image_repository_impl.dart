import 'package:fpdart/fpdart.dart';
import 'package:my_cat/common/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:my_cat/core/errors/exceptions/network_exceptions.dart';
import 'package:my_cat/core/errors/failures/failure.dart';
import 'package:my_cat/core/errors/failures/network_failure.dart';
import 'package:my_cat/core/errors/failures/unexpected_failure.dart';
import 'package:my_cat/core/utils/apis/apis.dart';
import 'package:my_cat/features/images/domain/repository/image_repository.dart';

class ImageRepositoryImpl extends ImageRepository {
  final RemoteDataSource remoteDataSource;

  const ImageRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List>> getAllImages(int page, int limit) async {
    try {
      final data = await remoteDataSource.methodGet(Api.images, param: Api.getAllImageParam(page, limit)) as List;
      return right(data);
    } on NetworkException catch (e) {
      return left(NetworkFailure(e.message));
    } catch (e) {
      return left(UnexpectedFailure(e.toString()));
    }
  }
}