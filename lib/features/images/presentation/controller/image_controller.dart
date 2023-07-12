import 'package:flutter/material.dart';
import 'package:my_cat/core/utils/params/image_search_param.dart';
import 'package:my_cat/core/utils/params/param.dart';
import 'package:my_cat/features/images/domain/entity/image/image_model.dart';
import 'package:my_cat/features/images/domain/usecase/image_usecase.dart';

class ImageController with ChangeNotifier {
  final ImageUseCase<List<FullImage>, Param> useCase;

  ImageController({required this.useCase})
      : list = [],
        isLoading = false,
        scrollController = ScrollController() {
    getAllImage();
    _pagination();
  }

  List<FullImage> list;
  bool isLoading;
  final ScrollController scrollController;
  int page = 0;
  int limit = 10;

  Future<void> getAllImage() async {
    isLoading = true;
    notifyListeners();

    final result = await useCase(ImageSearchParam(page: page, limit: limit));

    result.fold(
      (error) => debugPrint(error.message),
      (images) => list.addAll(images),
    );

    isLoading = false;
    notifyListeners();
  }

  void _pagination() async {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        debugPrint("""
-------------------------------------------
pixels - ${scrollController.position.pixels}
maxScrollExtent - ${scrollController.position.maxScrollExtent}
-------------------------------------------""");

        page++;
        getAllImage();
      }
    });
  }

  Future<void> refresh() async {
    await scrollController.animateTo(0, duration: const Duration(seconds: 2), curve: Curves.linear);
    page = 0;
    list = [];

    getAllImage();
  }
}
