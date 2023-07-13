import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_cat/core/utils/connectivities/connection_checker.dart';
import 'package:my_cat/core/utils/notifiers/snackbars.dart';


class ConnectivityController with ChangeNotifier {
  final ConnectionChecker checker;
  late BuildContext? _context;

  ConnectivityController({required this.checker})
      : checkConnectivity = checker.connectionSubscription {
    checkConnectivity.onData(showMessageConnection);
  }

  final StreamSubscription<bool> checkConnectivity;

  set connectionContext(BuildContext context) {
    _context = context;
  }

  void showMessageConnection(bool isConnected) {
    if(_context != null) {
      if(isConnected) {
        SnackBars.showMsg(context: _context!, message: "Back online!", color: Colors.green);
      } else {
        SnackBars.showMsg(context: _context!, message: "You are offline, check your connection!", color: Colors.red);
      }
    }
  }
}
