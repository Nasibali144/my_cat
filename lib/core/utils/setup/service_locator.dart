import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:my_cat/common/data/data_source/local_data_source/local_data_source.dart';
import 'package:my_cat/common/data/data_source/local_data_source/local_data_source_impl.dart';
import 'package:my_cat/common/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:my_cat/common/data/data_source/remote_data_source/remote_data_source_impl.dart';
import 'package:my_cat/common/presentation/controllers/connectivity_controller.dart';
import 'package:my_cat/core/utils/connectivities/connection_checker.dart';
import 'package:my_cat/core/utils/connectivities/connection_checker_impl.dart';
import 'package:my_cat/core/utils/params/image_search_param.dart';
import 'package:my_cat/core/utils/params/param.dart';
import 'package:my_cat/features/images/data/repository/image_repository_impl.dart';
import 'package:my_cat/features/images/domain/entity/image/image_model.dart';
import 'package:my_cat/features/images/domain/repository/image_repository.dart';
import 'package:my_cat/features/images/domain/usecase/get_all_image_usecase.dart';
import 'package:my_cat/features/images/domain/usecase/image_usecase.dart';
import 'package:my_cat/features/images/presentation/controller/image_controller.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  /// database
  const localDataSource = LocalDataSourceImpl(title: Feature.images);
  await localDataSource.init();
  locator.registerLazySingleton<LocalDataSource>(() => localDataSource);

  /// network
  locator.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl());

  /// connectivity
  final connectivity = Connectivity();
  locator.registerLazySingleton<ConnectionChecker>(
    () => ConnectionCheckerImpl(
      connectivity: connectivity,
    ),
  );

  /// repository
  locator.registerLazySingleton<ImageRepository>(
    () => ImageRepositoryImpl(
      remoteDataSource: locator(),
      localDataSource: locator(),
      connectionChecker: locator(),
    ),
  );

  /// usecase
  locator.registerLazySingleton<ImageUseCase<List<FullImage>, Param>>(
    () {
      final ImageUseCase<List<FullImage>, Param> useCase = GetAllImageUsecase(
        repository: locator(),
      );
      return useCase;
    },
  );

  /// controller
  locator.registerLazySingleton<ImageController>(
    () => ImageController(
      useCase: locator<ImageUseCase<List<FullImage>, Param>>(),
    ),
  );

  locator.registerLazySingleton<ConnectivityController>(
    () => ConnectivityController(
      checker: locator(),
    ),
  );
}
