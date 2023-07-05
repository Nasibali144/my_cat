import 'package:fpdart/fpdart.dart';
import 'package:my_cat/core/errors/failures/failure.dart';
import 'package:my_cat/core/utils/params/param.dart';

abstract class UseCase<T, P extends Param> {
  const UseCase();

  Future<Either<Failure, T>> call(P parameter);
}