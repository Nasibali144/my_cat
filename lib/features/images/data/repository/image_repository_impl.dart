import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:my_cat/common/data/data_source/local_data_source/local_data_source.dart';
import 'package:my_cat/common/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:my_cat/core/errors/exceptions/network_exceptions.dart';
import 'package:my_cat/core/errors/failures/failure.dart';
import 'package:my_cat/core/errors/failures/network_failure.dart';
import 'package:my_cat/core/errors/failures/unexpected_failure.dart';
import 'package:my_cat/core/utils/apis/apis.dart';
import 'package:my_cat/core/utils/connectivities/connection_checker.dart';
import 'package:my_cat/core/utils/params/image_search_param.dart';
import 'package:my_cat/features/images/domain/repository/image_repository.dart';

class ImageRepositoryImpl extends ImageRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;
  final ConnectionChecker connectionChecker;

  const ImageRepositoryImpl(
      {required this.remoteDataSource,
      required this.localDataSource,
      required this.connectionChecker});

  @override
  Future<Either<Failure, List>> getAllImages(ImageSearchParam parameter) async {
    try {
      List data;
      await localDataSource.createBox<String>();
      data = jsonDecode(localDataSource.read<String>("all", defaultValue: '[]'));

      final isConnected = await connectionChecker.check();
      if (isConnected) {
        final result = await remoteDataSource.methodGet(Api.images, param: parameter.toParam) as List;
        data.addAll(result);
        localDataSource.save<String>("all", jsonEncode(data));
      }
      return right(data);
    } on NetworkException catch (e) {
      return left(NetworkFailure(e.message));
    } catch (e) {
      return left(UnexpectedFailure(e.toString()));
    }
  }
}
