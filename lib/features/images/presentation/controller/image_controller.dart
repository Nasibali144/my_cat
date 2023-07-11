import 'package:flutter/material.dart';
import 'package:my_cat/core/utils/params/image_search_param.dart';
import 'package:my_cat/core/utils/params/param.dart';
import 'package:my_cat/features/images/domain/entity/image/image_model.dart';
import 'package:my_cat/features/images/domain/usecase/image_usecase.dart';

class ImageController with ChangeNotifier {
  final ImageUseCase<List<FullImage>, Param> useCase;

  ImageController({required this.useCase})
      : list = [],
        isLoading = false {
    getAllImage();
  }

  List<FullImage> list;
  bool isLoading;

  Future<void> getAllImage() async {
    isLoading = true;
    notifyListeners();

    final result = await useCase(const ImageSearchParam(page: 0, limit: 10));

    result.fold(
      (l) {
        // error  msg
        debugPrint(l.message);
      },
      (r) {
        list = r;
      },
    );

    isLoading = false;
    notifyListeners();
  }
}
