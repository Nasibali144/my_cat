import 'param.dart';

class PaginationParam extends Param {
  final int page;
  final int limit;

  PaginationParam({
    required this.page,
    required this.limit,
  });

  Map<String, String> get toParam => {
    'page': page.toString(),
    'limit': limit.toString(),
  };
}
