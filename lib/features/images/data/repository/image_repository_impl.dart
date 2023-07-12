import 'dart:convert';

import 'package:flutter/foundation.dart';
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
      List allData;
      List data = [];
      await localDataSource.createBox<String>();
      final isConnected = await connectionChecker.check();

      /// database refresh
      if(isConnected && parameter.page == 0) {
        await localDataSource.delete<String>("all");
      }

      /// get data from network
      if (isConnected) {
        data = await remoteDataSource.methodGet(Api.images, param: parameter.toParam) as List;
      }

      allData = jsonDecode(localDataSource.read<String>("all", defaultValue: '[]'));

      allData.addAll(data);
      localDataSource.save<String>("all", jsonEncode(allData));

      if(allData.length == parameter.page * parameter.limit) {
        data = allData.sublist(parameter.page * parameter.limit, (parameter.page + 1) * parameter.limit);
      }

      debugPrint(data.toString());
      debugPrint(allData.length.toString());
      debugPrint(data.length.toString());

      return right(data);
    } on NetworkException catch (e) {
      return left(NetworkFailure(e.message));
    } catch (e) {
      return left(UnexpectedFailure(e.toString()));
    }
  }
}
