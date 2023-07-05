import 'package:my_cat/core/utils/apis/apis.dart';

abstract class RemoteDataSource {
  Future<Object> methodGet(String api, {int? id, Map<String, String>? param, String baseUrl = Api.baseUrl});
}