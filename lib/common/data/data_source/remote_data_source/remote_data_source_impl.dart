import 'dart:convert';

import 'package:http/http.dart';
import 'package:my_cat/common/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:my_cat/core/errors/exceptions/network_exceptions.dart';
import 'package:my_cat/core/utils/apis/apis.dart';

class RemoteDataSourceImpl extends RemoteDataSource {
  @override
  Future<Object> methodGet(String api, {int? id,
      Map<String, String>? param, String baseUrl = Api.baseUrl}) async {
    Uri url = Uri.https(baseUrl, "$api${id != null ? "/$id": ""}", param);
    Response response = await get(url, headers: Api.headers);
    return _ResponseChecker.checkResponseData(response);
  }
}

sealed class _ResponseChecker {
  static Object checkResponseData(Response response) {
    switch (response.statusCode) {
      case 200:
        continue ok;

      ok:
      case 201:
        return jsonDecode(response.body);

      case 400:
        throw BadRequestException(
            "The request was unacceptable, often due to missing a required parameter");

      case 401:
        throw UnauthorizedException("Invalid Access Token");

      case 403:
        throw ForbiddenException("Missing permissions to perform request");

      case 404:
        throw NotFoundException("The requested resource doesn’t exist");

      serverError:
      case 500:
        throw InternalServerException("Something went wrong on our end");

      case 503:
        continue serverError;
      default:
        throw Exception("Some thing error");
    }
  }
}


