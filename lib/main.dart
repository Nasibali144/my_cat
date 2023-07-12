import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:my_cat/common/data/data_source/local_data_source/local_data_source.dart';
import 'package:my_cat/common/data/data_source/local_data_source/local_data_source_impl.dart';
import 'package:my_cat/common/data/data_source/remote_data_source/remote_data_source_impl.dart';
import 'package:my_cat/core/utils/connectivities/connection_checker_impl.dart';
import 'package:my_cat/features/images/data/repository/image_repository_impl.dart';
import 'package:my_cat/features/images/domain/usecase/get_all_image_usecase.dart';
import 'package:my_cat/features/images/presentation/controller/image_controller.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const localDataSource = LocalDataSourceImpl(
    title: Feature.images,
  );

  await localDataSource.init();

  /// get_it
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ImageController>(
          create: (_) => ImageController(
            useCase: GetAllImageUsecase(
              repository: ImageRepositoryImpl(
                remoteDataSource: RemoteDataSourceImpl(),
                localDataSource: localDataSource,
                connectionChecker: ConnectionCheckerImpl(
                  connectivity: Connectivity(),
                ),
              ),
            ),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

