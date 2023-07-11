// import 'dart:convert';
// import 'package:fpdart/fpdart.dart';
// import 'package:mockito/mockito.dart';
// import 'package:mockito/annotations.dart';
// import 'package:my_cat/core/errors/failures/failure.dart';
// import 'package:my_cat/core/errors/failures/network_failure.dart';
// import 'package:my_cat/core/utils/params/image_search_param.dart';
// import 'package:my_cat/features/breeds/domain/entity/breed/breed.dart';
// import 'package:my_cat/features/breeds/domain/entity/weight/weight.dart';
// import 'package:my_cat/features/images/domain/entity/category/category.dart';
// import 'package:my_cat/features/images/domain/entity/image/image_model.dart';
// import 'package:my_cat/features/images/domain/repository/image_repository.dart';
// import 'package:my_cat/features/images/domain/usecase/get_all_image_usecase.dart';
// import 'package:test/test.dart';
// import '../../../../core/converter_json.dart';
// import 'get_all_image_usecase_test.mocks.dart';
//
// @GenerateNiceMocks([MockSpec<ImageRepository>()])
// void main() {
//   late ImageRepository repository;
//   late GetAllImageUsecase usecase;
//
//   setUp(() {
//     repository = MockImageRepository();
//     usecase = GetAllImageUsecase(repository: repository);
//   });
//
//   group("Get All Image Usecase", () {
//     const param = ImagePaginationParam(page: 0, limit: 3);
//
//     test("Test 1. Success", () async {
//       /// 1. Init
//       final response = await jsonConverter("assets/test/jsons/images.json");
//       final json = jsonDecode(response);
//
//       int page = param.page;
//       int limit = param.limit;
//
//       final result = [
//         const FullImage(
//             id: "1si",
//             url: "https://cdn2.thecatapi.com/images/1si.jpg",
//             width: 500,
//             height: 376),
//         const FullImage(
//             id: "ct",
//             url: "https://cdn2.thecatapi.com/images/ct.jpg",
//             width: 2992,
//             height: 2992,
//             categories: [Category(id: 5, name: "boxes")]),
//         FullImage(
//             id: "z7fJRNeN6",
//             url: "https://cdn2.thecatapi.com/images/z7fJRNeN6.jpg",
//             width: 1024,
//             height: 683,
//             breeds: [
//               Breed(
//                   weight: const Weight(imperial: "8 - 17", metric: "4 - 8"),
//                   id: "pixi",
//                   name: "Pixie-bob",
//                   vetstreetUrl: "http://www.vetstreet.com/cats/pixiebob",
//                   temperament: "Affectionate, Social, Intelligent, Loyal",
//                   origin: "United States",
//                   countryCodes: "US",
//                   countryCode: "US",
//                   description:
//                       "Companionable and affectionate, the Pixie-bob wants to be an integral part of the family. The Pixie-Bob’s ability to bond with their humans along with their patient personas make them excellent companions for children.",
//                   lifeSpan: "13 - 16",
//                   indoor: 0,
//                   lap: 1,
//                   altNames: '',
//                   adaptability: 5,
//                   affectionLevel: 5,
//                   childFriendly: 4,
//                   dogFriendly: 5,
//                   energyLevel: 4,
//                   grooming: 1,
//                   healthIssues: 2,
//                   intelligence: 5,
//                   sheddingLevel: 3,
//                   socialNeeds: 4,
//                   strangerFriendly: 4,
//                   vocalisation: 1,
//                   experimental: 0,
//                   hairless: 0,
//                   natural: 0,
//                   rare: 0,
//                   rex: 0,
//                   suppressedTail: 1,
//                   shortLegs: 0,
//                   wikipediaUrl: "https://en.wikipedia.org/wiki/Pixiebob",
//                   hypoallergenic: 0,
//                   referenceImageId: "z7fJRNeN6")
//             ]),
//       ];
//
//       /// 2. Action
//       when(repository.getAllImages(page, limit))
//           .thenAnswer((_) => Future.value(right(json)));
//       final usecaseResult = await usecase(param);
//       List<FullImage> actual = [];
//
//       usecaseResult.fold((failure) => null, (list) {
//         actual = list;
//       });
//
//       /// 3. Check
//       expect(actual, equals(result));
//       // expect(actual, equals(Either<Failure, List<FullImage>>.right(result)));
//       // await expectLater(actual, Future.value(Either<Failure, List<FullImage>>.right(result)));
//       verify(repository.getAllImages(page, limit));
//     });
//
//     test("Test 2. Fail", () async {
//       /// 1. Init
//       int page = param.page;
//       int limit = param.limit;
//
//       /// 2. Action
//       when(repository.getAllImages(page, limit)).thenAnswer((_) => Future.value(
//           left(const NetworkFailure("Something went wrong on our end"))));
//       final actual = await usecase(param);
//
//       /// 3. Check
//       expect(
//           actual,
//           equals(Either<Failure, List<FullImage>>.left(
//               const NetworkFailure("Something went wrong on our end"))));
//       verify(repository.getAllImages(page, limit));
//     });
//   });
// }
