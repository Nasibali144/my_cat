// import 'dart:convert';
//
// import 'package:fpdart/fpdart.dart';
// import 'package:mockito/mockito.dart';
// import 'package:mockito/annotations.dart';
// import 'package:my_cat/common/data/data_source/remote_data_source/remote_data_source.dart';
// import 'package:my_cat/core/utils/apis/apis.dart';
// import 'package:my_cat/core/utils/params/image_search_param.dart';
// import 'package:my_cat/features/breeds/domain/entity/breed/breed.dart';
// import 'package:my_cat/features/breeds/domain/entity/weight/weight.dart';
// import 'package:my_cat/features/images/data/repository/image_repository_impl.dart';
// import 'package:my_cat/features/images/domain/entity/category/category.dart';
// import 'package:my_cat/features/images/domain/entity/image/image_model.dart';
// import 'package:test/test.dart';
//
// import '../../../../core/converter_json.dart';
// import 'image_repository_impl_test.mocks.dart';
//
// @GenerateNiceMocks([MockSpec<RemoteDataSource>()])
// void main() {
//   late RemoteDataSource dataSource;
//   late ImageRepositoryImpl repositoryImpl;
//
//   setUp(() {
//     dataSource = MockRemoteDataSource();
//     repositoryImpl = ImageRepositoryImpl(remoteDataSource: dataSource);
//   });
//
//   group("Image Repository Impl", () {
//     test("I. Success", () async {
//       final response = await jsonConverter("assets/test/jsons/images.json");
//       final json = jsonDecode(response);
//
//       int page = 0;
//       int limit = 3;
//
//       when(dataSource.methodGet(Api.images,
//               param: ImageSearchParam(page, limit)))
//           .thenAnswer((_) => Future.value(json));
//       final imageRepositoryImpl =
//           await repositoryImpl.getAllImages(page, limit);
//       List actual = [];
//
//       imageRepositoryImpl.fold((failure) => null, (list) {
//         actual = list;
//       });
//
//       expect(actual, equals(json));
//       verify(repositoryImpl.getAllImages(page, limit));
//     });
//   });
// }
