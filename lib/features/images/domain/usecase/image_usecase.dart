import 'package:my_cat/common/domain/usecase/usecase.dart';
import 'package:my_cat/core/utils/params/param.dart';

abstract class ImageUseCase<T, P extends Param> extends UseCase<T, P> {
  const ImageUseCase();
}