import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:my_cat/core/utils/connectivities/connection_checker.dart';

class ConnectionCheckerImpl implements ConnectionChecker {
  final Connectivity connectivity;

  const ConnectionCheckerImpl({required this.connectivity});

  @override
  Future<bool> check() async {
    final result = await connectivity.checkConnectivity();
    return result == ConnectivityResult.wifi || result == ConnectivityResult.mobile;
  }

  Stream<bool> _connectionStream(Stream<bool> Function(Stream<ConnectivityResult> beforeStream) convert) async* {
    final code = StreamTransformer.fromBind(convert);
    yield* connectivity.onConnectivityChanged.transform(code);
  }

  Stream<bool> _convert(Stream<ConnectivityResult> beforeStream) {
    return beforeStream.map((event) => event == ConnectivityResult.wifi || event == ConnectivityResult.mobile);
  }

  @override
  StreamSubscription<bool> get connectionSubscription {
    Stream<bool> stream = _connectionStream(_convert);
    return stream.listen(null);
  }
}