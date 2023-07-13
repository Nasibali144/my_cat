import 'dart:async';

abstract class ConnectionChecker {
  Future<bool> check();

  StreamSubscription<bool> get connectionSubscription;
}