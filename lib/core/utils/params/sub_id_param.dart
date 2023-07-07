import 'package:my_cat/core/utils/params/param.dart';

class SubIdParam extends Param {
  Map<String, String> get toParam => {
    'sub_id': null.toString(),
  };
}